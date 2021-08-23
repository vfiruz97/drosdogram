import 'package:drosdogram/domain/core/failure.dart';

class NotAuthenticatedError extends Error {}

class NetworkError extends Error {
  NetworkError({
    this.msg = '',
  });

  final String msg;

  @override
  String toString() {
    return msg;
  }
}

class ApiWrongResponse extends Error {
  final int? statusCode;
  final String msg;

  ApiWrongResponse({
    this.statusCode,
    required this.msg,
  });

  @override
  String toString() {
    return msg;
  }
}

class UnexpectedFileStorageError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString('UnexpectedValueError($valueFailure)');
  }
}
