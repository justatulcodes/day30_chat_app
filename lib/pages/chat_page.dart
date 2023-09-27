import 'package:day30_chat_app/components/app_bar_chat_page.dart';
import 'package:day30_chat_app/custom_widgets/custom_icon.dart';
import 'package:day30_chat_app/custom_widgets/spacer.dart';
import 'package:day30_chat_app/data/conversation_data.dart';
import 'package:day30_chat_app/data/sample_chat_data.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:day30_chat_app/list_items/chat_box_item.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage(
      {super.key, required this.conversationIndex, required this.chat});

  final int conversationIndex;
  final ChatItem chat;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final ScrollController controller = ScrollController();
    final converastion = listOfConversations[widget.conversationIndex];
    return SafeArea(
      child: Scaffold(
        appBar: chatPageAppBar(context, widget.chat),
        body: Column(
          children: [
            Expanded(
                child: ScrollConfiguration(
              behavior:
                  const MaterialScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast),
                controller: controller,
                reverse: true,
                itemBuilder: (context, index) {
                  return chatBoxItem(
                      context, converastion[converastion.length - index - 1]);
                },
                itemCount: converastion.length,
              ),
            )),
            Container(
              height: chatPageSentMessageBarHeight,
              color: surfaceBackgroundLight,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: surfaceLightGrey, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            enabledBorder: InputBorder.none,
                            prefixIcon: customIconButtonSvg(
                                "camera.svg",
                                () => null,
                                bottomNavBarIconSize,
                                surfaceDarkGrey,
                                15),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            hintText: "Type something",
                            hintStyle: const TextStyle(
                                color: textLightGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: headerH3Size)),
                        style: const TextStyle(
                            backgroundColor: Colors.transparent,
                            fontWeight: FontWeight.w500,
                            fontSize: headerH2Size),
                      ),
                    ),
                    customSpacer(0, 10),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      elevation: 10,
                      margin: EdgeInsets.zero,
                      color: surfaceOrange,
                      shadowColor: surfaceOrange,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: customIconSvg("send.svg", bottomNavBarIconSize,
                            surfaceBackgroundLight),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
