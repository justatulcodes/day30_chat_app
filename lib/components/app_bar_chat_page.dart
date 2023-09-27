import 'package:day30_chat_app/data/sample_chat_data.dart';
import 'package:flutter/material.dart';
import 'package:day30_chat_app/data/values.dart';
import '../custom_widgets/custom_icon.dart';
import '../custom_widgets/custom_text.dart';
import '../custom_widgets/image_dialog.dart';
import '../custom_widgets/spacer.dart';

AppBar chatPageAppBar(BuildContext context, ChatItem chat) {
  return AppBar(
    backgroundColor: surfaceBackgroundLight,
    elevation: lightBackgroundElevation,
    toolbarHeight: 60,
    leading: customIconButtonIconData(Icons.arrow_back_ios_new,
        () => {Navigator.pop(context)}, iconButtonSize, surfaceDarkGrey),
    actions: [
      customIconButtonSvg(
          "videocall.svg", () => null, iconButtonSize + 8, surfaceDarkGrey),
      customIconButtonSvg(
          "call.svg", () => null, iconButtonSize, surfaceDarkGrey)
    ],
    title: Row(
      children: [
        CircleAvatar(
          radius: topBarProfileCircleSize / 2,
          backgroundImage:
              AssetImage('assets/images/${chat.profileImageAddress}'),
          child: GestureDetector(
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (_) => ImageDialog(
                        img: chat.profileImageAddress,
                        name: chat.name,
                      ));
            },
          ),
        ),
        customSpacer(0, 10),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(
                chat.name,
                headerH3Size,
                textBlack,
              ),
              customSpacer(6, 0),
              if (chat.isOnline)
                customText("Online now", headerH5Size, surfaceGreen)
            ],
          ),
        )
      ],
    ),
  );
}
