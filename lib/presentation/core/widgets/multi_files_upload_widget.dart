import 'package:dotted_border/dotted_border.dart';
import 'package:drosdogram/aplication/objects/order_form/order_form_bloc.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class MultiFilesUploadWidget extends StatelessWidget {
  const MultiFilesUploadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _uploadImages() async {
      try {
        FocusScope.of(context).unfocus();
        final value = await ImagePicker().pickMultiImage();
        if (value != null) {
          context.read<OrderFormBloc>().add(
              OrderFormEvent.changeImages(value.map((e) => e.path).toList()));
        }
      } catch (e) {
        context
            .read<OrderFormBloc>()
            .add(const OrderFormEvent.changeImages([]));
      }
    }

    return BlocBuilder<OrderFormBloc, OrderFormState>(
      builder: (context, state) {
        return DottedBorder(
          borderType: BorderType.RRect,
          dashPattern: const [5, 4],
          radius: const Radius.circular(8),
          color: const Color.fromRGBO(0, 0, 0, 0.25),
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    state.order.images.isEmpty
                        ? "Загрузите файлы"
                        : "Выбрано ${state.order.images.length} файлов",
                    overflow: TextOverflow.ellipsis,
                    style: Style.uploadWidgetStyle,
                  ),
                ),
                InkWell(
                  onTap: _uploadImages,
                  child: SvgPicture.asset("assets/images/upload.svg"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
