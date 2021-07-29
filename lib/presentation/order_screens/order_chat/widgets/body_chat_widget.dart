import 'package:drosdogram/aplication/objects/chat_message/chat_message_bloc.dart';
import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:drosdogram/presentation/core/widgets/object_widgets.dart';
import 'package:drosdogram/presentation/order_screens/order_chat/widgets/first_message_bubble_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyChatWidget extends StatelessWidget {
  const BodyChatWidget({
    Key? key,
    required this.request,
  }) : super(key: key);

  final AgentRequest request;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
        builder: (context, state) {
      if (state.isGetting) {
        return SizedBox(
          height: Config.getChatBubbleHeight(context),
          child: Center(child: CircularProgressIndicatorWidget()),
        );
      }
      if (state.messages.isNotEmpty) {
        return Container(
          constraints: BoxConstraints(
            minHeight: Config.getChatBubbleHeight(context) ?? 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var message in state.messages) ...[
                FirstMessageBubbleWidget(message: message),
                const SizedBox(height: 16),
              ],
            ],
          ),
        );
      }
      return SizedBox(
        height: Config.getChatBubbleHeight(context),
      );
    });
  }
}
