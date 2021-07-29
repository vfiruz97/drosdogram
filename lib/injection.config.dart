// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'aplication/auth/auth_bloc.dart' as _i24;
import 'aplication/auth/password_recovery/password_recovery_bloc.dart' as _i21;
import 'aplication/auth/register/register_bloc.dart' as _i22;
import 'aplication/auth/sign-in-form/sign_in_form_bloc.dart' as _i23;
import 'aplication/objects/agent_request/agent_request_bloc.dart' as _i14;
import 'aplication/objects/chat_message/chat_message_bloc.dart' as _i16;
import 'aplication/objects/hypothec/hypothec_bloc.dart' as _i18;
import 'aplication/objects/object/object_bloc.dart' as _i9;
import 'aplication/objects/order_form/order_form_bloc.dart' as _i10;
import 'aplication/objects/slider/slider_bloc.dart' as _i12;
import 'aplication/profile/agency_form/agency_form_bloc.dart' as _i13;
import 'aplication/profile/faq/faq_bloc.dart' as _i17;
import 'aplication/profile/profile_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i19;
import 'domain/objects/main_objects/i_object_repository.dart' as _i5;
import 'domain/profile/i_user_repository.dart' as _i7;
import 'infrastructure/auth/auth_facade.dart' as _i20;
import 'infrastructure/auth/auth_repository.dart' as _i15;
import 'infrastructure/core/injection_modules.dart' as _i25;
import 'infrastructure/database/file_storage/file_storage.dart' as _i3;
import 'infrastructure/http_client/http_client.dart' as _i4;
import 'infrastructure/objects/object_repository.dart' as _i6;
import 'infrastructure/profile/user_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injactableModule = _$InjactableModule();
  gh.lazySingleton<_i3.FileStorage>(() => injactableModule.fileStore);
  gh.lazySingleton<_i4.HttpClient>(() => _i4.HttpClient());
  gh.lazySingleton<_i5.IObjectRepository>(() => _i6.ObjectRepository());
  gh.lazySingleton<_i7.IUserRepository>(() => _i8.UserRepository());
  gh.factory<_i9.ObjectBloc>(
      () => _i9.ObjectBloc(get<_i5.IObjectRepository>()));
  gh.factory<_i10.OrderFormBloc>(
      () => _i10.OrderFormBloc(get<_i5.IObjectRepository>()));
  gh.factory<_i11.ProfileBloc>(
      () => _i11.ProfileBloc(get<_i7.IUserRepository>()));
  gh.factory<_i12.SliderBloc>(
      () => _i12.SliderBloc(get<_i5.IObjectRepository>()));
  gh.factory<_i13.AgencyFormBloc>(
      () => _i13.AgencyFormBloc(get<_i7.IUserRepository>()));
  gh.factory<_i14.AgentRequestBloc>(
      () => _i14.AgentRequestBloc(get<_i5.IObjectRepository>()));
  gh.lazySingleton<_i15.AuthRepository>(
      () => _i15.AuthRepository(get<_i3.FileStorage>()));
  gh.factory<_i16.ChatMessageBloc>(
      () => _i16.ChatMessageBloc(get<_i5.IObjectRepository>()));
  gh.factory<_i17.FaqBloc>(() => _i17.FaqBloc(get<_i7.IUserRepository>()));
  gh.factory<_i18.HypothecBloc>(
      () => _i18.HypothecBloc(get<_i5.IObjectRepository>()));
  gh.lazySingleton<_i19.IAuthFacade>(
      () => _i20.AuthFacade(repo: get<_i15.AuthRepository>()));
  gh.factory<_i21.PasswordRecoveryBloc>(
      () => _i21.PasswordRecoveryBloc(get<_i19.IAuthFacade>()));
  gh.factory<_i22.RegisterBloc>(
      () => _i22.RegisterBloc(get<_i19.IAuthFacade>()));
  gh.factory<_i23.SignInFormBloc>(
      () => _i23.SignInFormBloc(get<_i19.IAuthFacade>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(get<_i19.IAuthFacade>()));
  return get;
}

class _$InjactableModule extends _i25.InjactableModule {}
