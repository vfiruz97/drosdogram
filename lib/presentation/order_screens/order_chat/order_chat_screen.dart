import 'package:another_flushbar/flushbar.dart';
import 'package:drosdogram/aplication/objects/agent_request/agent_request_bloc.dart';
import 'package:drosdogram/aplication/objects/chat_message/chat_message_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/bottom_nav_bloc.dart';
import 'package:drosdogram/aplication/screen_bottom_navigator/screen_nav_list.dart';
import 'package:drosdogram/injection.dart';
import 'package:drosdogram/presentation/core/widgets/object_widgets.dart';
import 'package:drosdogram/presentation/order_screens/order_chat/widgets/body_chat_widget.dart';
import 'package:drosdogram/presentation/order_screens/order_chat/widgets/chat_picked_image_widget.dart';
import 'package:drosdogram/presentation/order_screens/order_chat/widgets/object_panel_chat_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/app_bar_widget.dart';
import 'package:drosdogram/presentation/core/widgets/cancel_btn_widget.dart';

class OrderChatScreen extends StatelessWidget {
  const OrderChatScreen({
    Key? key,
    required this.request,
  }) : super(key: key);

  final AgentRequest request;

  Future showAlertDialog(BuildContext context) async {
    final Widget cancelButton = TextButton(
      onPressed: () => Navigator.pop(context, {"status": false}),
      child: const Text("Отменить"),
    );
    final Widget continueButton = TextButton(
      onPressed: () => Navigator.pop(context, {"status": true}),
      child: const Text("Продолжать"),
    );
    final AlertDialog alert = AlertDialog(
      content: const Text("Вы действительно хотите удалить заявку?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    final messageCtrl = TextEditingController();

    return BlocProvider(
      lazy: false,
      create: (context) => getIt<ChatMessageBloc>()
        ..add(
          ChatMessageEvent.getMessages(
            requestId: request.id,
          ),
        ),
      child: BlocConsumer<ChatMessageBloc, ChatMessageState>(
        listener: (context, state) {
          state.failureOrUnitOption.fold(
            () => {},
            (either) => either.fold(
              (failure) => Flushbar(
                message: failure.maybeMap(
                  badResponse: (r) => r.notice,
                  orElse: () => 'Ошибка сервера.',
                ),
                icon: Icon(
                  Icons.warning,
                  size: 28.0,
                  color: Colors.red[300],
                ),
                duration: const Duration(seconds: 3),
                leftBarIndicatorColor: Colors.red[300],
              )..show(context),
              (_) {},
            ),
          );
        },
        builder: (context, state) {
          Future<void> getPrevMessages() async {
            if (!state.isGetting) {
              BlocProvider.of<ChatMessageBloc>(context)
                  .add(ChatMessageEvent.getPrevMessages(requestId: request.id));
            }
          }

          Future.delayed(const Duration(seconds: 1), () {
            _scrollController.addListener(() {
              if (_scrollController.position.maxScrollExtent ==
                  _scrollController.position.pixels) {
                getPrevMessages();
              }
            });
          });

          messageCtrl.text = state.message;
          messageCtrl.selection = TextSelection.fromPosition(
              TextPosition(offset: messageCtrl.text.length));

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(
                title: request.clientName,
                onTapBackIcon: () => BlocProvider.of<BottomNavBloc>(context)
                    .add(const BottomNavEvent.changeTo(scr: RequestScr())),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  reverse: true,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 24, right: 24, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ObjectPanelChatWidget(request: request),
                        const SizedBox(height: 5),
                        CancelButtonWidget(
                          label: "Удалить заявку",
                          onTap: () async {
                            final _res = await showAlertDialog(context);
                            if (_res != null && _res["status"] == true) {
                              BlocProvider.of<AgentRequestBloc>(context).add(
                                  AgentRequestEvent.deleteAgentRequest(
                                      requestId: request.id));
                              BlocProvider.of<BottomNavBloc>(context).add(
                                  const BottomNavEvent.changeTo(
                                      scr: RequestScr()));
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                        if (state.isGettingPrev && !state.isGetting)
                          Center(child: CircularProgressIndicatorWidget()),
                        BodyChatWidget(request: request),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, top: 8, right: 24, bottom: 24),
                child: Stack(
                  children: [
                    Form(
                      child: TextFormField(
                        controller: messageCtrl,
                        autocorrect: false,
                        onChanged: (value) => context
                            .read<ChatMessageBloc>()
                            .add(ChatMessageEvent.changeMessage(value)),
                        keyboardType: TextInputType.multiline,
                        minLines: 6,
                        maxLines: 10,
                        style: Style.textFieldFirstStyle,
                        decoration: Style.chatTextareaDecoratdion,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const ChatPickedImageWidget(),
                          const SizedBox(width: 4),
                          InkWell(
                            onTap: () =>
                                BlocProvider.of<ChatMessageBloc>(context).add(
                                    ChatMessageEvent.sendMessage(
                                        requestId: request.id)),
                            child: state.isSubmitting
                                ? Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.all(5),
                                    child: CircularProgressIndicatorWidget(),
                                  )
                                : SvgPicture.asset(
                                    "assets/images/send-message.svg",
                                    color: state.message.isEmpty
                                        ? Colors.grey[500]
                                        : Colors.yellow,
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
