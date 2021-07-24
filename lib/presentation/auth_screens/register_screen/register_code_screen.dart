import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:drosdogram/aplication/auth/register/register_bloc.dart';
import 'package:drosdogram/domain/auth/user.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/text_underlined_button_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterCodeScreen extends StatelessWidget {
  final User user;

  const RegisterCodeScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<RegisterBloc>().add(RegisterEvent.openSecondScreen(user));
    final maskPhoneFormatter = MaskTextInputFormatter(
        mask: '+7 (###) ###-##-##', initialText: user.phone.getOrCrash());

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
              if (state.successRegistred) {
                BlocProvider.of<AuthBloc>(context)
                    .add(const AuthEvent.checkAuthToken());
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                AppBarWidget(
                  title: 'Введите код',
                  onTapBackIcon: () =>
                      Navigator.pushNamed(context, '/register-first'),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'На номер ',
                            style: Style.registerScteenFirstStyle,
                            children: <TextSpan>[
                              TextSpan(
                                text: maskPhoneFormatter.getMaskedText(),
                                style: Style.registerScteenFirstStyle
                                    .copyWith(color: Colors.yellow),
                              ),
                              const TextSpan(
                                text: '\nотправлен код, введите его:',
                                style: Style.registerScteenFirstStyle,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Form(
                          autovalidateMode: state.showErrorMessages
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          child: TextFormField(
                            onChanged: (value) => context
                                .read<RegisterBloc>()
                                .add(RegisterEvent.smsCodeChanged(value)),
                            maxLength: 6,
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            obscuringCharacter: '*',
                            style: Style.textFieldFirstStyle,
                            decoration: Style.splashScreenFirstDecorations(
                                hintText: '******'),
                          ),
                        ),
                        const SizedBox(height: 25),
                        YellowButtonWidget(
                          label: "Вперёд",
                          isDisable: !state.user.smsCode.isValid(),
                          onTap: () => context.read<RegisterBloc>().add(
                              const RegisterEvent.submitSecondStepPressed()),
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
                          onTap: () => Navigator.pushReplacementNamed(context, '/sign-in'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
