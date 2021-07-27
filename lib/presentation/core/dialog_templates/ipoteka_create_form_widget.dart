import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:drosdogram/aplication/objects/hypothec/hypothec_bloc.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';

class IpotekaCreateFormWidget extends StatelessWidget {
  const IpotekaCreateFormWidget({
    Key? key,
    this.objectName = '',
  }) : super(key: key);

  final String objectName;

  static Future<void> showIpotekaDialog(BuildContext context,
      {String objectName = ''}) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
      builder: (context) {
        return IpotekaCreateFormWidget(
          objectName: objectName,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final maskPhoneFormatter =
        MaskTextInputFormatter(mask: '+7 (###) ###-##-##');

    return BlocProvider(
      create: (context) => getIt<HypothecBloc>()
        ..add(HypothecEvent.changeObjectName(objectName)),
      child: BlocConsumer<HypothecBloc, HypothecState>(
        listener: (context, state) {
          state.failureOrOption.fold(
            () => {},
            (either) => either.fold(
              (failure) => Flushbar(
                message: failure.maybeMap(
                  badResponse: (r) => r.notice,
                  orElse: () => null,
                ),
                icon: Icon(
                  Icons.warning,
                  size: 28.0,
                  color: Colors.red[300],
                ),
                duration: const Duration(seconds: 3),
                leftBarIndicatorColor: Colors.red[300],
              )..show(context),
              (_) => Navigator.pop(context),
            ),
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
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
                            const FirstTitleWidget(title: "Заявка на ипотеку"),
                            const SizedBox(height: 25),
                            TextFormField(
                              initialValue: state.hypothec.name.isValid()
                                  ? state.hypothec.name.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<HypothecBloc>()
                                  .add(HypothecEvent.changeName(value)),
                              validator: (_) => context
                                  .read<HypothecBloc>()
                                  .state
                                  .hypothec
                                  .name
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      strShortLength: (_) =>
                                          'ФИО очень коротко',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                              autocorrect: false,
                              style: Style.textFieldFirstStyle,
                              decoration: Style.splashScreenFirstDecorations(
                                  hintText: 'ФИО (клиента)*'),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: state.hypothec.phone.isValid()
                                  ? state.hypothec.phone.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<HypothecBloc>()
                                  .add(HypothecEvent.changePhone(
                                      "7${maskPhoneFormatter.getUnmaskedText()}")),
                              validator: (_) => context
                                  .read<HypothecBloc>()
                                  .state
                                  .hypothec
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
                                  hintText: 'Телефон (клиента)*'),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: state.hypothec.request.isValid()
                                  ? state.hypothec.request.getOrCrash()
                                  : null,
                              onChanged: (value) => context
                                  .read<HypothecBloc>()
                                  .add(HypothecEvent.changeRequest(value)),
                              validator: (_) => context
                                  .read<HypothecBloc>()
                                  .state
                                  .hypothec
                                  .request
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      strShortLength: (_) =>
                                          'Запрос очень короткий',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                              autocorrect: false,
                              keyboardType: TextInputType.multiline,
                              minLines: 6,
                              maxLines: 10,
                              style: Style.textFieldFirstStyle,
                              decoration: Style.splashScreenFirstDecorations(
                                  hintText: 'Запрос (клиента)*'),
                            ),
                            const SizedBox(height: 25),
                            Row(
                              children: [
                                Expanded(
                                  child: CancelButtonWidget(
                                    isDisable: state.isSubmitting,
                                    onTap: () => Navigator.pop(context),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: YellowButtonWidget(
                                    label: "Отправить",
                                    isDisable: false,
                                    onTap: () => context
                                        .read<HypothecBloc>()
                                        .add(const HypothecEvent.submit()),
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
          );
        },
      ),
    );
  }
}
