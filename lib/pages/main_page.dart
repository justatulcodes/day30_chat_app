import 'package:day30_chat_app/components/app_bar_main_page.dart';
import 'package:day30_chat_app/custom_widgets/bottom_nav_icon.dart';
import 'package:day30_chat_app/custom_widgets/custom_icon.dart';
import 'package:day30_chat_app/data/values.dart';
import 'package:day30_chat_app/pages/main_page_fragments.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: surfaceBackgroundLight,
      appBar: appBarMainPage(context),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: surfaceDarkGrey,
        selectedItemColor: surfaceBlue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: bottomNavBarIconSize,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          customBottomNavigationIconData(Icons.chat_bubble_rounded),
          customBottomNavigationIconData(Icons.notifications),
          BottomNavigationBarItem(
            label: '',
            icon: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              elevation: 10,
              margin: EdgeInsets.zero,
              color: surfaceBlue,
              shadowColor: surfaceBlue,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: customIconIconData(
                    Icons.add, bottomNavBarIconSize, surfaceBackgroundLight),
              ),
            ),
          ),
          customBottomNavigationIconData(Icons.call),
          customBottomNavigationIconData(Icons.group),
        ],
        
      ),
      body: mainPageFragments[index] 
    ));
  }
}
