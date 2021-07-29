import 'package:cached_network_image/cached_network_image.dart';
import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/presentation/core/config/config.dart';
import 'package:flutter/material.dart';

class ObjectPanelChatWidget extends StatelessWidget {
  const ObjectPanelChatWidget({
    Key? key,
    required this.request,
  }) : super(key: key);

  final AgentRequest request;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: Config.getScreenWidth(context),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              imageUrl: request.image,
              height: 220.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  request.object,
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  request.clientName,
                  style: const TextStyle(
                    fontFamily: "CeraRoundPro",
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  request.clientPhone,
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
