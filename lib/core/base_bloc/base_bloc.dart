import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as concurrency;

/// Базовый класс для всех блоков, предоставляющий общую функциональность.
abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  /// Контроллер для действий UI (например, отображение сообщений об ошибках).
  final _uiActionController = StreamController<UIAction>();

  /// Поток для подписки на действия UI.
  Stream<UIAction> get uiActions => _uiActionController.stream;

  /// Переменная для управления конкурентностью событий.
  final EventTransformer<Event> eventTransformer;

  /// Конструктор базового блока.
  BaseBloc(
    super.initialState, {
    EventTransformer<Event>? transformer,
  }) : eventTransformer = transformer ?? concurrency.sequential() {
    // Регистрация обработчика событий.
    on<Event>(
      (event, emit) async => await onEventHandler(event, emit),
      transformer: eventTransformer,
    );
  }

  /// Метод для обработки событий. Должен быть реализован в наследниках.
  Future<void> onEventHandler(Event event, Emitter<State> emit);

  /// Метод для отправки действий UI.
  void addUIAction(UIAction action) {
    _uiActionController.add(action);
  }

  /// Переопределение метода `close` для закрытия контроллера.
  @override
  Future<void> close() {
    _uiActionController.close();
    return super.close();
  }
}

/// Пример класса для действий UI.
abstract class UIAction {}

/// Пример действия для отображения сообщения об ошибке.
class ShowErrorAction extends UIAction {
  final String message;

  ShowErrorAction(this.message);
}
