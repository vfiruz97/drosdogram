import 'dart:async';

import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/styles/style.dart';

class DisplayDefaultNotificationDialogWidget extends StatelessWidget {
  const DisplayDefaultNotificationDialogWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  static Future<void> show(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 3),
    Function? callback,
  }) async {
    Future.delayed(duration, () => Navigator.pop(context)).then((_) {
      if (callback != null) {
        callback();
      }
    });
    await showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      barrierColor: const Color.fromRGBO(0, 0, 0, 0.7),
      builder: (context) {
        return DisplayDefaultNotificationDialogWidget(
          message: message,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                decoration: Style.dialogFirstDecoration,
                child: Text(message),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
