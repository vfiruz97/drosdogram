import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/objects/order_form/order_form_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:drosdogram/injection.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/address_widget.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';
import 'package:drosdogram/presentation/core/widgets/first_title_widget.dart';
import 'package:drosdogram/presentation/core/widgets/multi_files_upload_widget.dart';
import 'package:drosdogram/presentation/core/widgets/yellow_button_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateOrderFormScreen extends StatelessWidget {
  const CreateOrderFormScreen({
    Key? key,
    required this.object,
  }) : super(key: key);

  final Bobject object;

  @override
  Widget build(BuildContext context) {
    final maskPhoneFormatter =
        MaskTextInputFormatter(mask: '+7 (###) ###-##-##');

    return BlocProvider(
      create: (context) =>
          getIt<OrderFormBloc>()..add(OrderFormEvent.changeObjectId(object.id)),
      child: SingleChildScrollView(
        child: BlocConsumer<OrderFormBloc, OrderFormState>(
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
                (_) => BlocProvider.of<BottomNavBloc>(context)
                    .add(BottomNavEvent.changeTo(
                  scr: const HomeDisplayObjectScr(),
                  data: object,
                )),
              ),
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                AppBarWidget(
                  title: 'Создание заявки',
                  onTapBackIcon: () =>
                      BlocProvider.of<BottomNavBloc>(context).add(
                    BottomNavEvent.changeTo(
                        scr: const HomeDisplayObjectScr(), data: object),
                  ),
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
                          FirstTitleWidget(
                            title: object.name,
                          ),
                          const SizedBox(height: 12),
                          AddressWidget(address: object.address),
                          const SizedBox(height: 25),
                          TextFormField(
                            initialValue: state.order.name.isValid()
                                ? state.order.name.getOrCrash()
                                : null,
                            onChanged: (value) => context
                                .read<OrderFormBloc>()
                                .add(OrderFormEvent.changeName(value)),
                            validator: (_) => context
                                .read<OrderFormBloc>()
                                .state
                                .order
                                .name
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    strShortLength: (_) => 'ФИО очень коротко',
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
                            initialValue: state.order.phone.isValid()
                                ? state.order.phone.getOrCrash()
                                : null,
                            onChanged: (value) => context
                                .read<OrderFormBloc>()
                                .add(OrderFormEvent.changePhone(
                                    "7${maskPhoneFormatter.getUnmaskedText()}")),
                            validator: (_) => context
                                .read<OrderFormBloc>()
                                .state
                                .order
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
                            initialValue: state.order.request.isValid()
                                ? state.order.request.getOrCrash()
                                : null,
                            onChanged: (value) => context
                                .read<OrderFormBloc>()
                                .add(OrderFormEvent.changeRequest(value)),
                            validator: (_) => context
                                .read<OrderFormBloc>()
                                .state
                                .order
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
                          const SizedBox(height: 20),
                          const MultiFilesUploadWidget(),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Expanded(
                                child: CancelButtonWidget(
                                  isDisable: state.isSubmitting,
                                  onTap: () =>
                                      BlocProvider.of<BottomNavBloc>(context)
                                          .add(BottomNavEvent.changeTo(
                                    scr: const HomeDisplayObjectScr(),
                                    data: object,
                                  )),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: YellowButtonWidget(
                                  label: "Отправить",
                                  isDisable: false,
                                  onTap: () => context
                                      .read<OrderFormBloc>()
                                      .add(const OrderFormEvent.submit()),
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
