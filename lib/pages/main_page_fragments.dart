import 'package:flutter/material.dart';
import 'package:day30_chat_app/custom_widgets/custom_text.dart';
import 'package:day30_chat_app/custom_widgets/spacer.dart';
import 'package:day30_chat_app/data/sample_chat_data.dart';
import 'package:day30_chat_app/data/story_data.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:day30_chat_app/list_items/chat_list_item.dart';
import 'package:day30_chat_app/list_items/stories_list_item.dart';

List<Widget> mainPageFragments = [
  Column(
    children: [
      Card(
        elevation: lightStoryCardElevation,
        margin: EdgeInsets.zero,
        child: Container(
          alignment: Alignment.centerLeft,
          height: storiesSectionSurfaceHeight,
          width: double.maxFinite,
          color: surfaceBackgroundLight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSpacer(20, 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customText("Stories", headerH2Size, textMidGrey),
              ),
              customSpacer(10, 0),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const MaterialScrollBehavior()
                      .copyWith(overscroll: false),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10),
                    itemBuilder: (context, index) {
                      return storyListItemview(context, storyList[index]);
                    },
                    itemCount: storyList.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          itemBuilder: (context, index) {
            return chatListItem(context, chatItemsList[index]);
          },
          itemCount: chatItemsList.length,
        ),
      )
    ],
  ),
  const Center(
      child: Icon(
    Icons.notifications_rounded,
    size: 100,
  )),
  const Center(child: Icon(Icons.add_ic_call, size: 100)),
  const Center(child: Icon(Icons.call, size: 100)),
  const Center(child: Icon(Icons.group, size: 100)),
];
