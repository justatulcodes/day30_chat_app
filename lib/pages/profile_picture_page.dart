import 'package:flutter/material.dart';

import '../custom_widgets/custom_icon.dart';
import '../custom_widgets/custom_text.dart';
import '../data/values.dart';

class ProfilePicPage extends StatefulWidget {
  const ProfilePicPage({super.key, required this.picAddress});

  final String picAddress;

  @override
  State<ProfilePicPage> createState() => _ProfilePicPageState();
}

class _ProfilePicPageState extends State<ProfilePicPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: customText("Profile Picture", headerH2Size, textWhite),
        leading: customIconButtonIconData(Icons.arrow_back_ios_new,
            () => {Navigator.pop(context)}, iconButtonSize, surfaceDarkGrey),
      ),
      backgroundColor: Colors.transparent,
      body: Center(
          child: Image(
        image: AssetImage(
          "assets/images/${widget.picAddress}",
        ),
        fit: BoxFit.scaleDown,
      )),
    ));
  }
}
