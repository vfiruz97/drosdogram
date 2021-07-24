import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required T failedValue,
  }) = _Empty;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = _InvalidEmail;
  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = _InvalidPassword;
  const factory ValueFailure.unexpected({
    required T failedValue,
  }) = _Unexpected;
  const factory ValueFailure.strShortLength({
    required T failedValue,
  }) = _StrShortLength;
  const factory ValueFailure.invalidPhone({
    required T failedValue,
  }) = _InvalidPhone;
  const factory ValueFailure.invalidSmsCode({
    required T failedValue,
  }) = _InvalidSmsCode;
}
