import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/failure.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/core/value_validators.dart';

class AuthToken extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AuthToken(String value) {
    return AuthToken._(validateAuthToken(value));
  }

  const AuthToken._(this.value);
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

class SmsCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SmsCode(String value) {
    return SmsCode._(validateSmsCode(value));
  }

  const SmsCode._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String value) {
    return EmailAddress._(validateEmailAdress(value));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String value) {
    return Password._(validatePassword(value));
  }

  const Password._(this.value);
}
