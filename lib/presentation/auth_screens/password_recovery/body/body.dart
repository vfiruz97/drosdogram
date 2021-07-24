import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:drosdogram/aplication/auth/password_recovery/password_recovery_bloc.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PasswordRecoveyBodyWidget extends StatelessWidget {
  const PasswordRecoveyBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maskPhoneFormatter =
        MaskTextInputFormatter(mask: '+7 (###) ###-##-##');
    return BlocConsumer<PasswordRecoveryBloc, PasswordRecoveryState>(
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
              FlushbarHelper.createSuccess(
                message: "На ваш номер телефона выслан новый пароль",
              )
                  .show(context)
                  .then((_) => Navigator.pushReplacementNamed(context, '/sign-in'));
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            AppBarWidget(
                title: 'Восстановление пароля',
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
                      "Для восстановления пароля\nвведите ваше номер телефона",
                      textAlign: TextAlign.left,
                      style: Style.registerScteenFirstStyle,
                    ),
                    const SizedBox(height: 25),
                    Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: TextFormField(
                        initialValue: state.phone.isValid()
                            ? state.phone.getOrCrash()
                            : null,
                        onChanged: (value) => context
                            .read<PasswordRecoveryBloc>()
                            .add(PasswordRecoveryEvent.changedPhone(
                                "7${maskPhoneFormatter.getUnmaskedText()}")),
                        validator: (_) => context
                            .read<PasswordRecoveryBloc>()
                            .state
                            .phone
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidPhone: (_) => 'Неверный номер телефона',
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
                        decoration:
                            Style.splashScreenFirstDecorations(hintText: '+7'),
                      ),
                    ),
                    const SizedBox(height: 25),
                    YellowButtonWidget(
                      label: "Вперёд",
                      isDisable: !state.phone.isValid(),
                      onTap: () => context
                          .read<PasswordRecoveryBloc>()
                          .add(const PasswordRecoveryEvent.submitSmsCode()),
                      width: double.infinity,
                    ),
                    if (state.isSubmitting) ...[
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(
                        color: Colors.yellow,
                        backgroundColor: Colors.white,
                      )
                    ],
                    const SizedBox(height: 25),
                    TextUnderlinedButtonWidget(
                      label: 'Зарегистрироваться',
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/register-first'),
                    ),
                    const SizedBox(height: 25),
                    TextUnderlinedButtonWidget(
                      label: 'У меня уже есть профиль',
                      onTap: () => Navigator.pushReplacementNamed(context, '/sign-in'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
