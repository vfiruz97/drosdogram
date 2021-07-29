import 'package:drosdogram/presentation/core/widgets/object_widgets.dart';
import 'package:flutter/material.dart';

class LoadWidget extends StatelessWidget {
  const LoadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicatorWidget(),
      ),
    );
  }
}
