import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drosdogram/domain/auth/i_auth_facade.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.unauthenticated());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkAuthToken: (e) async* {
        final _optionAuthToken = await _authFacade.getUserAuthToken();

        yield _optionAuthToken.fold(
          () => const AuthState.unauthenticated(),
          (_authToken) => AuthState.authenticated(token: _authToken),
        );
      },
      signOut: (_) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
      removeRegIsComplete: (_) async* {
        final _optionAuthToken = await _authFacade.removeIsRegComplete();

        yield _optionAuthToken.fold(
          () => const AuthState.unauthenticated(),
          (_authToken) => AuthState.authenticated(token: _authToken),
        );
      },
    );
  }
}
