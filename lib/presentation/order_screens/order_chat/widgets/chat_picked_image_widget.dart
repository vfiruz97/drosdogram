import 'package:drosdogram/aplication/objects/chat_message/chat_message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class ChatPickedImageWidget extends StatelessWidget {
  const ChatPickedImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _uploadImage() async {
      try {
        FocusScope.of(context).unfocus();
        final value =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (value != null) {
          context
              .read<ChatMessageBloc>()
              .add(ChatMessageEvent.changeFile(value.path));
        }
      } catch (e) {
        // print(e);
      }
    }

    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
      builder: (context, state) {
        return InkWell(
          onTap: _uploadImage,
          child: SvgPicture.asset(
            "assets/images/paperclip.svg",
            color: state.file == null ? Colors.grey[500] : Colors.yellow,
          ),
        );
      },
    );
  }
}
