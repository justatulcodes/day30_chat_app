import 'package:day30_chat_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../custom_widgets/custom_icon.dart';
import '../data/story_data.dart';
import '../data/values.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key, required this.story});

  final Story story;
  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: surfaceBackgroundLight,
        statusBarIconBrightness: Brightness.dark));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: lightStoryCardElevation,
        title: customText(widget.story.name, headerH2Size, textWhite),
        leading: customIconButtonIconData(Icons.arrow_back_ios_new,
            () => {Navigator.pop(context)}, iconButtonSize, surfaceDarkGrey),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          LinearPercentIndicator(
            barRadius: const Radius.circular(10),
            animation: true,
            animationDuration: 10000,
            onAnimationEnd: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.zero,
            progressColor: Colors.white,
            backgroundColor: Colors.black26,
            lineHeight: 2,
            percent: 1,
            fillColor: Colors.black26,
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: Image(
              image: AssetImage(
                "assets/images/${widget.story.storyImageAddress}",
              ),
              fit: BoxFit.contain,
            )),
          )
        ],
      ),
    ));
  }
}
