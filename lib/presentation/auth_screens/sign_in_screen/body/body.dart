import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/auth/auth_bloc.dart';
import 'package:drosdogram/aplication/auth/register/register_bloc.dart';
import 'package:drosdogram/aplication/auth/sign-in-form/sign_in_form_bloc.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maskPhoneFormatter =
        MaskTextInputFormatter(mask: '+7 (###) ###-##-##');

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => Flushbar(
              message: failure.map(
                serverError: (_) => 'Ошибка сервера.',
                invalidResonse: (r) => r.notice,
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
              BlocProvider.of<AuthBloc>(context)
                  .add(const AuthEvent.checkAuthToken());
            },
          ),
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                  title: 'Авторизация',
                  onTapBackIcon: () =>
                      Navigator.pushReplacementNamed(context, '/start-splash')),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Для входа введите ваше номер\nтелефона и пароль(код)",
                        textAlign: TextAlign.left,
                        style: Style.registerScteenFirstStyle,
                      ),
                      const SizedBox(height: 25),
                      Form(
                        autovalidateMode: state.showError
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: Column(
                          children: [
                            TextFormField(
                              initialValue: state.phone.isValid()
                                  ? state.phone.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.phoneChanged(
                                      "7${maskPhoneFormatter.getUnmaskedText()}")),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
                                  .state
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
                              initialValue: state.smsCode.isValid()
                                  ? state.smsCode.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.smsCodeChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
                                  .state
                                  .smsCode
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      invalidSmsCode: (_) => 'Неверный смс-код',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                              autocorrect: false,
                              maxLength: 6,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              obscuringCharacter: '*',
                              style: Style.textFieldFirstStyle,
                              decoration: Style.splashScreenFirstDecorations(
                                  hintText: '******'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      YellowButtonWidget(
                        label: "Вперёд",
                        isDisable:
                            !(state.phone.isValid() && state.smsCode.isValid()),
                        onTap: () => context
                            .read<SignInFormBloc>()
                            .add(const SignInFormEvent.submitSignIn()),
                        width: double.infinity,
                      ),
                      if (state.isSubmiting) ...[
                        const SizedBox(height: 8),
                        const LinearProgressIndicator(
                          color: Colors.yellow,
                          backgroundColor: Colors.white,
                        )
                      ],
                      const SizedBox(height: 25),
                      TextUnderlinedButtonWidget(
                        label: 'Зарегистрироваться',
                        onTap: () {
                          BlocProvider.of<RegisterBloc>(context)
                              .add(const RegisterEvent.initial());
                          Navigator.pushReplacementNamed(context, '/register-first');
                        },
                      ),
                      const SizedBox(height: 25),
                      TextUnderlinedButtonWidget(
                        label: 'Забыли в пароль',
                        onTap: () =>
                            Navigator.pushReplacementNamed(context, '/password-recovery'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
