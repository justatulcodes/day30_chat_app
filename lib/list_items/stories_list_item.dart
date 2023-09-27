import 'package:day30_chat_app/custom_widgets/custom_icon.dart';
import 'package:day30_chat_app/custom_widgets/custom_profile_icon.dart';
import 'package:day30_chat_app/custom_widgets/custom_text.dart';
import 'package:day30_chat_app/custom_widgets/spacer.dart';
import 'package:day30_chat_app/custom_widgets/transition.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:day30_chat_app/pages/story_page.dart';
import 'package:flutter/material.dart';

import '../data/story_data.dart';

Widget storyListItemview(BuildContext context, Story story) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, BottomToTopTransition(StoryPage(story: story)));
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            profileCircle(storyProfileImageSize, story.profileImageAddress),
            customIconSvg("circle_outline.svg", storyProfileImageSize + 20,
                story.isSeen ? surfaceStoryGrey : surfaceStoryRed)
          ],
        ),
      ),
      customSpacer(4, 0),
      customText(story.name.split(' ')[0], headerH4Size, textBlack)
    ],
  );
}
