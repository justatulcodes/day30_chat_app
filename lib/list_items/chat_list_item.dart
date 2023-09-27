import 'package:day30_chat_app/custom_widgets/custom_text.dart';
import 'package:day30_chat_app/custom_widgets/spacer.dart';
import 'package:day30_chat_app/custom_widgets/transition.dart';
import 'package:day30_chat_app/data/sample_chat_data.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/image_dialog.dart';
import '../pages/chat_page.dart';

Widget chatListItem(BuildContext context, ChatItem chat) {
  return Container(
    height: 50,
    margin: const EdgeInsets.symmetric(vertical: 15),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          RightToLeftTransition(ChatPage(
            conversationIndex: chat.conversationListIndex,
            chat: chat,
          )),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: chatProfileImageSize / 2,
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
          customSpacer(0, 15),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customText(
                  chat.name,
                  headerH2Size,
                  textBlack,
                ),
                customText(chat.lastMessage, headerH4Size, surfaceBlue)
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customText(chat.lastMessageTime.toUpperCase(), headerH5Size,
                  textMidGrey),
              if (chat.unreadMsgCount != 0)
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 22,
                      color: surfaceBlue,
                    ),
                    customText(chat.unreadMsgCount.toString(), headerH5Size,
                        textWhite, FontWeight.bold)
                  ],
                )
            ],
          )
        ],
      ),
    ),
  );
}
