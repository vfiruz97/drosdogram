import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/auth/register/register_bloc.dart';
import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<RegisterBloc>().add(const RegisterEvent.openFirstScreen());
    final maskPhoneFormatter =
        MaskTextInputFormatter(mask: '+7 (###) ###-##-##');

    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
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
              if (state.openSecondStep) {
                Navigator.pushNamed(
                  context,
                  '/register-second',
                  arguments: state.user,
                );
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppBarWidget(
                      onTapBackIcon: () => Navigator.pushReplacementNamed(
                            context,
                            '/start-splash',
                          )),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Для регистрации введите\nваше ФИО и номер телефона",
                            textAlign: TextAlign.left,
                            style: Style.registerScteenFirstStyle,
                          ),
                          const SizedBox(height: 25),
                          Form(
                            autovalidateMode: state.showErrorMessages
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                            child: Column(
                              children: [
                                TextFormField(
                                  initialValue: state.user.name.isValid()
                                      ? state.user.name.getOrCrash()
                                      : null,
                                  autocorrect: false,
                                  onChanged: (value) => context
                                      .read<RegisterBloc>()
                                      .add(RegisterEvent.nameChanged(value)),
                                  validator: (_) => context
                                      .read<RegisterBloc>()
                                      .state
                                      .user
                                      .name
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                          strShortLength: (_) =>
                                              'ФИО очень короткое',
                                          orElse: () => null,
                                        ),
                                        (_) => null,
                                      ),
                                  style: Style.textFieldFirstStyle,
                                  decoration:
                                      Style.splashScreenFirstDecorations(),
                                ),
                                const SizedBox(height: 25),
                                TextFormField(
                                  initialValue: state.user.phone.isValid()
                                      ? state.user.phone.getOrCrash()
                                      : null,
                                  autocorrect: false,
                                  onChanged: (value) => context
                                      .read<RegisterBloc>()
                                      .add(RegisterEvent.phoneChanged(
                                          "7${maskPhoneFormatter.getUnmaskedText()}")),
                                  validator: (_) => context
                                      .read<RegisterBloc>()
                                      .state
                                      .user
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
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    maskPhoneFormatter,
                                  ],
                                  style: Style.textFieldFirstStyle,
                                  decoration:
                                      Style.splashScreenFirstDecorations(
                                          hintText: '+7'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          YellowButtonWidget(
                            label: "Вперёд",
                            isDisable: !(state.user.name.isValid() &&
                                    state.user.phone.isValid()) ||
                                state.isSubmitting,
                            onTap: () {
                              context.read<RegisterBloc>().add(
                                  const RegisterEvent.submitFirstPressed());
                            },
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
                            label: 'У меня уже есть профиль',
                            onTap: () => Navigator.pushReplacementNamed(
                                context, '/sign-in'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
