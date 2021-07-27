import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/failure.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/core/value_validators.dart';

class Request extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Request(String value) {
    return Request._(validateStringIsNotShort(value, length: 2));
  }

  const Request._(this.value);
}
