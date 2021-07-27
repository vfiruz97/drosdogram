import 'package:drosdogram/aplication/objects/agent_request/agent_request_bloc.dart';
import 'package:drosdogram/presentation/order_screens/order_list/widgets/object_info_card_widget.dart';
import 'package:drosdogram/presentation/splash_screen/load_widget.dart';
import 'package:flutter/material.dart';

import 'package:drosdogram/presentation/core/widgets/title_app_bar_widget.dart';
import 'package:drosdogram/presentation/order_screens/order_list/widgets/selectbox_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              children: const [
                SelectboxWidget(),
                SizedBox(height: 25),
                Expanded(
                  child: OrderListWidget(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OrderListWidget extends StatelessWidget {
  const OrderListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgentRequestBloc, AgentRequestState>(
      builder: (context, state) {
        if (state.isGetting) {
          return const LoadWidget();
        }
        return ListView.builder(
          itemCount: state.requests.length,
          itemBuilder: (context, index) {
            return ObjectInfoCardWidget(
              request: state.requests[index],
            );
          },
        );
      },
    );
  }
}
