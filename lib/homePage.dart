import 'package:flutter/material.dart';
import 'package:portfolio/aboutMeSection/aboutMeSeaction.dart';
import 'package:portfolio/contactME/contactMe.dart';
import 'package:portfolio/customAppBar/customAppBar.dart';
import 'package:portfolio/customBottumNavBar/CustomBottomNavBar.dart';
import 'package:portfolio/mainSection/mainSection.dart';
import 'package:portfolio/projects/projectsSection.dart';
import 'package:portfolio/skillsSection/skillsSection.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  AnimationController _ColorAnimationController;

  // ignore: non_constant_identifier_names
  AnimationController _TextAnimationController;
  Animation _colorTween, _homeTween, _workOutTween, _iconTween, _drawerTween;
  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_ColorAnimationController);
    _iconTween =
        ColorTween(begin: Colors.white, end: Colors.lightBlue.withOpacity(0.5))
            .animate(_ColorAnimationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_ColorAnimationController);
    _workOutTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 80);
      _TextAnimationController.animateTo(scrollInfo.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          NotificationListener<ScrollUpdateNotification>(
            onNotification: scrollListener,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MainSection(),
                  AboutMe(),
                  Skills(),
                  Projects(),
                  ContactMe(),
                  CustomBottomNavBAr(),
                ],
              ),
            ),
          ),
          AnimatedAppBar(
            drawerTween: _drawerTween,
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
            colorAnimationController: _ColorAnimationController,
            colorTween: _colorTween,
            homeTween: _homeTween,
            iconTween: _iconTween,
            workOutTween: _workOutTween,
          ),
        ],
      ),
    );
  }
}
