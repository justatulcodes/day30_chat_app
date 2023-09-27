import 'package:day30_chat_app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data/values.dart';

//https://dribbble.com/shots/15217725-Simple-Messaging-App-Concept/attachments/6963587?mode=media
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: surfaceBackgroundLight,
        statusBarIconBrightness: Brightness.dark));

    return const MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
