import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/aboutMeSection/aboutMeSeaction.dart';
import 'package:portfolio/mainSection/mainSection.dart';
import 'package:portfolio/projects/projectsSection.dart';
import 'package:portfolio/skillsSection/skillsSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Portfolio Website'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainSection(),
            AboutMe(),
            Skills(),
            Projects()
          ],
        ),
      ),
    );
  }
}
