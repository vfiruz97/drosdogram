import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/auth/auth_bloc.dart';
import 'package:drosdogram/aplication/profile/profile_bloc.dart';
import 'package:drosdogram/domain/profile/agency.dart';
import 'package:drosdogram/presentation/core/dialog_templates/agency_create_form_widget.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/photo_avatar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:drosdogram/presentation/splash_screen/load_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FinishRegisterScreenBodyWidget extends StatelessWidget {
  const FinishRegisterScreenBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maskPhoneFormatter =
        MaskTextInputFormatter(mask: '+7 (###) ###-##-##');
    final _agencyC = TextEditingController(text: '');

    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (p, c) => p.failureOrOption != c.failureOrOption,
      listener: (context, state) {
        state.failureOrOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => Flushbar(
              message: failure.map(
                responseError: (f) => f.notice,
                invalidToken: (_) {
                  BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.signOut());
                  return 'Неверный токен';
                },
              ),
              icon: Icon(
                Icons.warning,
                size: 28.0,
                color: Colors.red[300],
              ),
              duration: const Duration(seconds: 3),
              leftBarIndicatorColor: Colors.red[300],
            )..show(context),
            (_) {
              if (state.userInfo.isComplete == 1) {
                BlocProvider.of<AuthBloc>(context)
                    .add(const AuthEvent.removeRegIsComplete());
                Navigator.pushReplacementNamed(context, '/screen-navigation');
              }
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.getSuccess) {
          final _user = state.userInfo;
          if (_agencyC.text == '' &&
              _user.agency != null &&
              _user.agency!.name.isValid()) {
            _agencyC.text = _user.agency!.name.getOrCrash();
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                AppBarWidget(
                  title: _user.isComplete == 0
                      ? 'Завершение регистрации'
                      : 'Профиль',
                  onTapBackIcon: () => Navigator.pop(context),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Form(
                      autovalidateMode: state.showErrorMessage
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PhotoAvatarWidget(imageSrc: _user.image),
                          const SizedBox(height: 35),
                          TextFormField(
                            initialValue: _user.name.isValid()
                                ? _user.name.getOrCrash()
                                : null,
                            onChanged: (value) => context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.changeName(value)),
                            validator: (_) => context
                                .read<ProfileBloc>()
                                .state
                                .userInfo
                                .name
                                .value
                                .fold(
                                  (failure) => failure.maybeMap(
                                    strShortLength: (_) => 'ФИО очень короткое',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                            style: Style.textFieldFirstStyle,
                            decoration: Style.splashScreenFirstDecorations(
                                hintText: 'ФИО*'),
                          ),
                          const SizedBox(height: 25),
                          TypeAheadField(
                            textFieldConfiguration: TextFieldConfiguration(
                              controller: _agencyC,
                              style: Style.textFieldFirstStyle,
                              decoration: state.userInfo.agency != null &&
                                      state.userInfo.agency!.name.isValid()
                                  ? Style.splashScreenFirstDecorations(
                                      hintText: 'Название агентства*')
                                  : Style.splashScreenSecondDecorations(
                                      hintText: 'Название агентства*'),
                            ),
                            suggestionsCallback: (pattern) {
                              return state.agencyList.where((agency) {
                                if (agency.name.isValid()) {
                                  return agency.name
                                      .getOrCrash()
                                      .toLowerCase()
                                      .startsWith(pattern.toLowerCase());
                                }
                                return false;
                              });
                            },
                            itemBuilder: (context, Agency? suggestion) {
                              return ListTile(
                                title: Text(
                                  suggestion!.name.getOrCrash(),
                                  style: Style.textFieldFirstStyle,
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                ),
                              );
                            },
                            onSuggestionSelected: (Agency? suggestion) {
                              final _agencyName = suggestion!.name.getOrCrash();
                              _agencyC.text = _agencyName;
                              context
                                  .read<ProfileBloc>()
                                  .add(ProfileEvent.changeAgency(_agencyName));
                            },
                            noItemsFoundBuilder: (context) {
                              return const ListTile(
                                title: Text(
                                  "Нет такого названия агентства",
                                  style: Style.textFieldFirstStyle,
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Не нашли своего? ",
                                style: Style.underlinedTextStyle,
                              ),
                              TextUnderlinedButtonWidget(
                                label: 'Зарегистрировать агенство',
                                onTap: () async {
                                  final _res = await AgencyCreateFormWidget
                                      .showAgencyDialog(context);
                                  if (_res != null && _res is Agency) {
                                    BlocProvider.of<ProfileBloc>(context)
                                        .add(ProfileEvent.addNewAgency(_res));
                                    _agencyC.text = _res.name.getOrCrash();
                                    Flushbar(
                                      message: 'Запись добавлена',
                                      icon: Icon(
                                        Icons.check,
                                        size: 28.0,
                                        color: Colors.green[300],
                                      ),
                                      duration: const Duration(seconds: 3),
                                      leftBarIndicatorColor: Colors.green[300],
                                    ).show(context);
                                  }
                                },
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            initialValue: _user.phone.isValid()
                                ? maskPhoneFormatter
                                    .formatEditUpdate(
                                      TextEditingValue.empty,
                                      TextEditingValue(
                                        text: _user.phone.getOrCrash(),
                                      ),
                                    )
                                    .text
                                : null,
                            onChanged: (value) => context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.changePhone(
                                    "7${maskPhoneFormatter.getUnmaskedText()}")),
                            validator: (_) => context
                                .read<ProfileBloc>()
                                .state
                                .userInfo
                                .phone
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    invalidPhone: (_) =>
                                        'Неверный номер телефона',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                            autocorrect: false,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              maskPhoneFormatter,
                            ],
                            style: Style.textFieldFirstStyle,
                            decoration: Style.splashScreenFirstDecorations(
                                hintText: '+7'),
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            initialValue:
                                _user.email != null && _user.email!.isValid()
                                    ? _user.email!.getOrCrash()
                                    : null,
                            onChanged: (value) => context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.changeEmail(value)),
                            validator: (_) => _user.email != null
                                ? context
                                    .read<ProfileBloc>()
                                    .state
                                    .userInfo
                                    .email!
                                    .value
                                    .fold(
                                      (failure) => failure.maybeMap(
                                        invalidEmail: (_) =>
                                            'Некоректный адрес электронной почты',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    )
                                : 'Введите адрес электронной почты',
                            keyboardType: TextInputType.emailAddress,
                            style: Style.textFieldFirstStyle,
                            decoration: Style.splashScreenFirstDecorations(
                                hintText: 'example@blank.com'),
                          ),
                          const SizedBox(height: 25),
                          YellowButtonWidget(
                            label: "Сохранить",
                            isDisable: state.isSubmitting,
                            onTap: () => context
                                .read<ProfileBloc>()
                                .add(const ProfileEvent.editUserInfo()),
                            width: double.infinity,
                          ),
                          if (state.isSubmitting) ...[
                            const SizedBox(height: 8),
                            const LinearProgressIndicator(
                              color: Colors.yellow,
                              backgroundColor: Colors.white,
                            )
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state.isGetting) {
          return const LoadWidget();
        }
        return const SizedBox();
      },
    );
  }
}
