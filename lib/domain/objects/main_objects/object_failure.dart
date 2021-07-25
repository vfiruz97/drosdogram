import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_failure.freezed.dart';

@freezed
abstract class BobjectFailure with _$BobjectFailure {
  const factory BobjectFailure.empty() = _Empty;
  const factory BobjectFailure.badResponse(String? notice) = _BadResponse;
  const factory BobjectFailure.serverError() = _ServerError;
}
