import 'package:flutter/cupertino.dart';

class RightToLeftTransition extends PageRouteBuilder {
  final Widget page;

  RightToLeftTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 600),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastEaseInToSlowEaseOut,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.centerRight,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}

class BottomToTopTransition extends PageRouteBuilder {
  final Widget page;

  BottomToTopTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastOutSlowIn,
                parent: animation,
                reverseCurve: Curves.fastEaseInToSlowEaseOut);
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                axis: Axis.vertical,
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}
