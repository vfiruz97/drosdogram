import 'package:flutter/material.dart';

import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/presentation/core/styles/style.dart';
import 'package:drosdogram/presentation/core/widgets/circle_avatar_widget.dart';

class ObjectInfoCardWidget extends StatelessWidget {
  const ObjectInfoCardWidget({
    Key? key,
    required this.request,
  }) : super(key: key);

  final AgentRequest request;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          height: 128,
          decoration: Style.objectInfoCardDecoration,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (request.image.isNotEmpty)
                  CircleAvatarWidget(
                    imageUrl: request.image,
                    radius: 30,
                  ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.published,
                        style: Style.objectInfoCardFirstStyle,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.clientName,
                            style: Style.objectInfoCardSecondStyle,
                          ),
                          const SizedBox(width: 5),
                          if (request.count.isNotEmpty)
                            Container(
                              width: 15,
                              height: 15,
                              decoration: Style.yellowCircleDecoration,
                              child: Center(
                                child: Text(request.count,
                                    style: Style.objectInfoCardThirdStyle),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Text(
                          request.message,
                          overflow: TextOverflow.clip,
                          style: Style.objectInfoCardForthStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
