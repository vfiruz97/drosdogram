import 'package:flutter/material.dart';

class LoadWidget extends StatelessWidget {
  const LoadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
