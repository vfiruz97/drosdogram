import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/errors.dart';
import 'package:drosdogram/domain/core/failure.dart';
import 'package:drosdogram/domain/core/value_validators.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (f) => left(f),
      (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String value) {
    return Name._(validateStringIsNotShort(value, length: 2));
  }

  const Name._(this.value);
}

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String value) {
    return Phone._(validatePhoneNumber(value));
  }

  const Phone._(this.value);
}
