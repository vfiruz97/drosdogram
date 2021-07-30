import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/auth/auth_bloc.dart';
import 'package:drosdogram/aplication/profile/agency_form/agency_form_bloc.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgencyCreateFormWidget extends StatelessWidget {
  const AgencyCreateFormWidget({
    Key? key,
  }) : super(key: key);

  static Future<dynamic> showAgencyDialog(BuildContext context) async {
    final _res = await showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
      builder: (context) {
        return BlocProvider(
          create: (context) => getIt<AgencyFormBloc>(),
          child: const AgencyCreateFormWidget(),
        );
      },
    );
    return _res;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AgencyFormBloc, AgencyFormState>(
      listener: (_, state) {
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
            (agency) {
              Navigator.pop(context, agency);
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 25,
                      ),
                      decoration: Style.dialogFirstDecoration,
                      child: Form(
                        autovalidateMode: state.showErrorMessage
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FirstTitleWidget(
                                title: "Заяка на создание агентства"),
                            const SizedBox(height: 25),
                            TextFormField(
                              initialValue: state.agency.name.isValid()
                                  ? state.agency.name.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<AgencyFormBloc>()
                                  .add(AgencyFormEvent.changeName(value)),
                              validator: (_) => context
                                  .read<AgencyFormBloc>()
                                  .state
                                  .agency
                                  .name
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      strShortLength: (_) =>
                                          'Название агенства очень короткое',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                              style: Style.textFieldFirstStyle,
                              decoration: Style.splashScreenFirstDecorations(
                                  hintText: 'Название компании*'),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: state.agency.emailAddress != null &&
                                      state.agency.emailAddress!.isValid()
                                  ? state.agency.emailAddress!.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<AgencyFormBloc>()
                                  .add(AgencyFormEvent.changeEmail(value)),
                              validator: (_) =>
                                  state.agency.emailAddress != null
                                      ? context
                                          .read<AgencyFormBloc>()
                                          .state
                                          .agency
                                          .emailAddress!
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
                                  hintText: 'E-mail руководителя*'),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CancelButtonWidget(
                                    onTap: () => Navigator.pop(context),
                                    isDisable: state.isSubmitting,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: YellowButtonWidget(
                                    label: "Отправить",
                                    isDisable: !(state.agency.name.isValid() &&
                                            state.agency.emailAddress !=
                                                null) ||
                                        state.isSubmitting,
                                    onTap: () => context
                                        .read<AgencyFormBloc>()
                                        .add(const AgencyFormEvent.submit()),
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ],
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
