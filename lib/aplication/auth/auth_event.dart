part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthToken() = _CheckAuthToken;
  const factory AuthEvent.signOut() = _SignOut;
}