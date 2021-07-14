import 'package:drosdogram/presentation/order_screens/order_list/widgets/object_info_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/widgets/title_app_bar_widget.dart';
import 'package:drosdogram/presentation/order_screens/order_list/widgets/selectbox_widget.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleAppBarWidget(
              title: 'Список заявок',
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SelectboxWidget(),
                    const SizedBox(height: 25),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return const ObjectInfoCardWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
