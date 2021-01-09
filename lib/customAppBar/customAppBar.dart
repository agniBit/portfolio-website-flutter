import 'package:flutter/material.dart';

class AnimatedAppBar extends StatelessWidget {
  final AnimationController colorAnimationController;
  final Animation colorTween, homeTween, workOutTween, iconTween, drawerTween;
  final Function onPressed;

  AnimatedAppBar({
    Key key,
    @required this.colorAnimationController,
    @required this.drawerTween,
    @required this.onPressed,
    this.colorTween,
    this.homeTween,
    this.workOutTween,
    this.iconTween,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Container(
      height: 50,
      child: AnimatedBuilder(
        animation: colorAnimationController,
        builder: (context, child) => AppBar(
          backgroundColor: colorTween.value,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.only(left: mQ.width * .1),
            child: Text(
              'Portfolio',
              style: TextStyle(
                  color: homeTween.value,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1),
            ),
          ),
          actions: (mQ.width >= 768)
              ? [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      'Home',
                      style: TextStyle(color: homeTween.value),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      'About Me',
                      style: TextStyle(color: homeTween.value),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      'My Skills',
                      style: TextStyle(color: homeTween.value),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      'Projects',
                      style: TextStyle(color: homeTween.value),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      'Contact Me',
                      style: TextStyle(color: homeTween.value),
                    ),
                  ),
                  SizedBox(
                    width: mQ.width * .1,
                  ),
                ]
              : [
                  Icon(
                    Icons.menu,
                    color: homeTween.value,
                  ),
                  SizedBox(
                    width: mQ.width * .1,
                  ),
                ],
        ),
      ),
    );
  }
}
