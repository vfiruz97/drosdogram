// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplication/auth/auth_bloc.dart' as _i15;
import 'aplication/auth/password_recovery/password_recovery_bloc.dart' as _i12;
import 'aplication/auth/register/register_bloc.dart' as _i13;
import 'aplication/auth/sign-in-form/sign_in_form_bloc.dart' as _i14;
import 'aplication/profile/agency_form/agency_form_bloc.dart' as _i8;
import 'aplication/profile/profile_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/profile/i_user_repository.dart' as _i5;
import 'infrastructure/auth/auth_facade.dart' as _i11;
import 'infrastructure/auth/auth_repository.dart' as _i9;
import 'infrastructure/core/injection_modules.dart' as _i16;
import 'infrastructure/database/file_storage/file_storage.dart' as _i3;
import 'infrastructure/http_client/http_client.dart' as _i4;
import 'infrastructure/profile/user_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injactableModule = _$InjactableModule();
  gh.lazySingleton<_i3.FileStorage>(() => injactableModule.fileStore);
  gh.lazySingleton<_i4.HttpClient>(() => _i4.HttpClient());
  gh.lazySingleton<_i5.IUserRepository>(() => _i6.UserRepository());
  gh.factory<_i7.ProfileBloc>(
      () => _i7.ProfileBloc(get<_i5.IUserRepository>()));
  gh.factory<_i8.AgencyFormBloc>(
      () => _i8.AgencyFormBloc(get<_i5.IUserRepository>()));
  gh.lazySingleton<_i9.AuthRepository>(
      () => _i9.AuthRepository(get<_i3.FileStorage>()));
  gh.lazySingleton<_i10.IAuthFacade>(
      () => _i11.AuthFacade(repo: get<_i9.AuthRepository>()));
  gh.factory<_i12.PasswordRecoveryBloc>(
      () => _i12.PasswordRecoveryBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i13.RegisterBloc>(
      () => _i13.RegisterBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i10.IAuthFacade>()));
  return get;
}

class _$InjactableModule extends _i16.InjactableModule {}
