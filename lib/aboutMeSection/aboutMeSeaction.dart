import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Container(
      width: mQ.width,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(
            top: mQ.height * .10,
            bottom: mQ.height * .05,
            left: mQ.width * .10,
            right: mQ.width * .10),
        child: Column(
          children: [
            Container(
              width: mQ.width * .80,
              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    size: 200,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "I'm from kannauj,U.P.,India. I have done" +
                        " B.Tech in CSE from Jaypee Institute of infomation technology, Noida and my intermediate schooling from BNSD, Kanpur." +
                        " Machine learning, Data Structures & Algorithms has lean my field of interest and i have gained decent command on languagea like Python, C, C++, C#, Dart, Javascript and knowledge of flutter App development and web development using ReactJS and hand on experiance on machine learning" +
                        " Apart from my technical skills i have a kean interest in exploring new technologies in automobile and e-sports" +
                        " As a fresher, I'm ready to take any opportunity, to start mt career with, and to enhance my technical and interpersonal skills" +
                        " i think one of my strongest strength is my patience i don't easily loose my calm , I am an optimestic and and an quick learner.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
