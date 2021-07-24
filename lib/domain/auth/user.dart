import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required Name name,
    required Phone phone,
    required SmsCode smsCode,
  }) = _User;

  factory User.empty() => User(
        name: Name(''),
        phone: Phone('+7'),
        smsCode: SmsCode(''),
      );
}
