import 'package:drosdogram/aplication/objects/agent_request/agent_request_bloc.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectboxWidget extends StatelessWidget {
  const SelectboxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgentRequestBloc, AgentRequestState>(
      builder: (context, state) {
        final _dropItems = state.objects.entries
            .map(
              (entry) => DropdownMenuItem<String>(
                value: entry.key,
                child: Text(entry.value, style: Style.selectboxWidgetStyle),
              ),
            )
            .toList();
        return DropdownButtonFormField<String>(
          value: state.selectedObjectId,
          items: _dropItems,
          onChanged: (oid) {
            if (oid != null) {
              context
                  .read<AgentRequestBloc>()
                  .add(AgentRequestEvent.changeObjectId(objectId: oid));
            }
          },
          decoration: Style.selectboxDecoration,
        );
      },
    );
  }
}
