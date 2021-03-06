import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.invalidToken() = _InvalidToken;
  const factory ProfileFailure.responseError(String? notice) = _ResponseError;
}
