import 'package:day30_chat_app/custom_widgets/custom_text.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({super.key, required this.img, required this.name});

  final String img;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 2,
      child: Container(
        alignment: Alignment.bottomCenter,
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/$img'),
                fit: BoxFit.cover)),
        child: Container(
          height: 40,
          alignment: Alignment.centerLeft,
          color: const Color(0x33000000),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: customText(name, headerH2Size, textWhite),
        ),
      ),
    );
  }
}
