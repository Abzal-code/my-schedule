import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable implements Exception {
  final String? errorMsg;
  final String? errorDescription;
  final String? errorCode;
  final Exception? exception;

  const Failure({
    this.errorMsg,
    this.errorDescription,
    this.errorCode,
    this.exception,
  });

  @override
  List<Object?> get props => [errorMsg, errorDescription, errorCode, exception];
}

class ServerResponseFailure extends Failure {
  const ServerResponseFailure({
    super.errorMsg,
    super.errorDescription,
    super.exception,
  });
}

class CacheFailure extends Failure {
  const CacheFailure()
      : super(
          errorMsg: 'Cache Failure',
        );
}

class AuthFailure extends Failure {
  const AuthFailure();
}

class NetworkFailure extends Failure {
  const NetworkFailure()
      : super(
          errorMsg: 'Network Failure',
          errorDescription: 'Please check your internet connection',
        );
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    super.exception,
  }) : super(
          errorMsg: 'Something went wrong. Please try again later.',
        );
}
