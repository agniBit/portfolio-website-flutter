import 'package:flutter/material.dart';
import 'package:portfolio/aboutMeSection/aboutMeSeaction.dart';
import 'package:portfolio/contactME/contactMe.dart';
import 'package:portfolio/customAppBar/customAppBar.dart';
import 'package:portfolio/customBottumNavBar/CustomBottomNavBar.dart';
import 'package:portfolio/mainSection/mainSection.dart';
import 'package:portfolio/projects/projectsSection.dart';
import 'package:portfolio/skillsSection/skillsSection.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

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
  AutoScrollController controller;
  bool _openMenu;

  @override
  void initState() {
    super.initState();

    // animation handler
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

    // croll to widget handler
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 50, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

    _openMenu = false;
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

  Widget _wrapScrollTag({int index, Widget child}) => AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
        highlightColor: Colors.black.withOpacity(0.1),
      );

  Future _scrollToIndex(int index) async {
    await controller.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    controller.highlight(index);
  }

  void openMenuHandler() {
    setState(() {
      _openMenu = !_openMenu;
    });
  }

  Widget navLinks(String text, int scrollIndex) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: TextButton(
        onPressed: (() {
          openMenuHandler();
          _scrollToIndex(scrollIndex);
        }),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          NotificationListener<ScrollUpdateNotification>(
            onNotification: scrollListener,
            child: ListView(
              controller: controller,
              children: [
                _wrapScrollTag(child: MainSection(), index: 0),
                _wrapScrollTag(child: AboutMe(), index: 1),
                _wrapScrollTag(child: Skills(), index: 2),
                _wrapScrollTag(child: Projects(), index: 3),
                _wrapScrollTag(child: ContactMe(), index: 4),
                _wrapScrollTag(child: CustomBottomNavBAr(), index: 5),
              ],
            ),
          ),
          AnimatedAppBar(
            drawerTween: _drawerTween,
            openMenu: openMenuHandler,
            scroollHandler: _scrollToIndex,
            colorAnimationController: _ColorAnimationController,
            colorTween: _colorTween,
            homeTween: _homeTween,
            iconTween: _iconTween,
            workOutTween: _workOutTween,
          ),
          Visibility(
            visible: _openMenu,
            child: Container(
              color: Colors.white,
              height: mQ.height,
              width: mQ.width,
              padding: EdgeInsets.symmetric(horizontal: mQ.width * .1),
              child: Column(children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: openMenuHandler,
                        icon: Icon(
                          Icons.close,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: mQ.height - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      navLinks('Home', 0),
                      navLinks('About Me', 1),
                      navLinks('Skills', 2),
                      navLinks('Projects', 3),
                      navLinks('Contact Me', 4),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
