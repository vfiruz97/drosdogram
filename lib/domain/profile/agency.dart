import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agency.freezed.dart';

@freezed
abstract class Agency with _$Agency {
  const factory Agency({
    required int id,
    required Name name,
    EmailAddress? emailAddress,
  }) = _Agency;

  factory Agency.empty() => Agency(id: 0, name: Name(''));
}
