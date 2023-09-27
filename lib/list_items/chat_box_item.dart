import 'package:day30_chat_app/custom_widgets/custom_text.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:flutter/material.dart';

import '../data/conversation_data.dart';

Widget chatBoxItem(BuildContext context, Conversation chat) {
  return Container(
    width: double.maxFinite,
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    child: Column(
      children: [
        chat.isRecieved
            ? recievedMessageBox(context, chat.message, chat.deliveredTime)
            : sentMessageBox(context, chat.message, chat.deliveredTime)
      ],
    ),
  );
}

Widget recievedMessageBox(BuildContext context, String message, String time) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)),
      ),
      color: surfaceChatBoxLight,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: customText(message, headerH3Size, textDarkGrey, FontWeight.w500),
      ),
    ),
  );
}

Widget sentMessageBox(BuildContext context, String message, String time) {
  return Align(
    alignment: Alignment.centerRight,
    child: Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30)),
      ),
      color: surfaceBlue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: customText(message, headerH3Size, textWhite, FontWeight.w500),
      ),
    ),
  );
}
