import 'package:flutter/material.dart';

import '../custom_widgets/custom_icon.dart';
import '../custom_widgets/custom_profile_icon.dart';
import '../custom_widgets/custom_text.dart';
import '../data/values.dart';

AppBar appBarMainPage(BuildContext context) {
  return AppBar(
    backgroundColor: surfaceBackgroundLight,
    centerTitle: true,
    elevation: 0,
    title: customText("Messages", headerH1Size, textBlack, FontWeight.w500),
    leading: customIconButtonSvg(
        "search.svg", () => null, iconButtonSize, surfaceDarkGrey),
    actions: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: profileCircle(topBarProfileCircleSize, "profile2.jpg"),
      )
    ],
  );
}
