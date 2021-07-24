import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateAuthToken(String input) {
  if (input.trim().length > 10) {
    return right(input);
  } else {
    return left(ValueFailure.strShortLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringIsNotShort(String input,
    {required int length}) {
  if (input.length >= length) {
    return right(input);
  } else {
    return left(ValueFailure.strShortLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const telRegex = r"""^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{10,11}$""";
  if (RegExp(telRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAdress(String input) {
  const emailRegex =
      r"""^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 3 || input.length < 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSmsCode(String input) {
  final bool _isNumeric = double.tryParse(input) != null;
  if (input.length == 6 && _isNumeric) {
    return right(input);
  } else {
    return left(ValueFailure.invalidSmsCode(failedValue: input));
  }
}
