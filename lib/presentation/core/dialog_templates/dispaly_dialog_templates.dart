import 'package:drosdogram/presentation/core/dialog_templates/agency_create_form_widget.dart';
import 'package:drosdogram/presentation/core/dialog_templates/ipoteka_create_form_widget.dart';
import 'package:flutter/material.dart';

class DisplayDialogTemplates extends StatelessWidget {
  const DisplayDialogTemplates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => IpotekaCreateFormWidget.showIpotekaDialog(context),
            child: const Text('display noti for creating ipoteka'),
          ),
          TextButton(
            onPressed: () => AgencyCreateFormWidget.showAgencyDialog(context),
            child: const Text('display noti for creating agency'),
          ),
        ],
      ),
    );
  }
}
