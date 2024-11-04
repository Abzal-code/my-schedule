import 'package:equatable/equatable.dart';

class ScheduleEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final String? img;
  final String? date;
  final String? time;

  const ScheduleEntity({
    this.id,
    this.name,
    this.description,
    this.img,
    this.date,
    this.time,
  });

  @override
  List<Object?> get props => [id, name, description, img, date, time];
}
