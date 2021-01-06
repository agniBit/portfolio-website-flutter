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
    return Container(
      height: 50,
      child: AnimatedBuilder(
        animation: colorAnimationController,
        builder: (context, child) => AppBar(
          backgroundColor: colorTween.value,
          elevation: 10,
          title: Text(
            'Portfolio',
            style: TextStyle(
                color: homeTween.value,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
