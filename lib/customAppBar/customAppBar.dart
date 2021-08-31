import 'package:flutter/material.dart';

class AnimatedAppBar extends StatelessWidget {
  final AnimationController colorAnimationController;
  final Animation colorTween, homeTween, workOutTween, iconTween, drawerTween;
  final Function scroollHandler, openMenu;

  AnimatedAppBar({
    Key key,
    @required this.colorAnimationController,
    @required this.drawerTween,
    this.openMenu,
    this.colorTween,
    this.homeTween,
    this.workOutTween,
    this.iconTween,
    Future Function(int index) this.scroollHandler,
  }) : super(key: key);

  Widget navLinks(String text, int scrollIndex) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: TextButton(
        onPressed: (() => scroollHandler(scrollIndex)),
        child: Text(
          text,
          style: TextStyle(color: homeTween.value),
        ),
      ),
    );
  }

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
                  navLinks('Home', 0),
                  navLinks('About Me', 1),
                  navLinks('Skills', 2),
                  navLinks('Projects', 3),
                  navLinks('Contact Me', 4),
                  SizedBox(
                    width: mQ.width * .1,
                  ),
                ]
              : [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: homeTween.value,
                    ),
                    color: Colors.brown,
                    onPressed: (() {
                      openMenu();
                    }),
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
