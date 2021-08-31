import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  bool isSmall(double width) {
    if (width <= 768)
      return true;
    else
      return false;
  }

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
              direction: isSmall(mQ.width) ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: isSmall(mQ.width) ? 0 : 2,
                  child: Container(
                    height: 350,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/pic_1.png',
                    ),
                  ),
                ),
                Expanded(
                  flex: isSmall(mQ.width) ? 0 : 3,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "I am a Machine Learning enthusiast and MERN stack developer who enjoys connecting the dots: be it ideas from different disciplines, people from different teams, or applications from different industries. I have strong technical skills and an academic background in Engineering, Statistics, and Machine Learning." +
                          "My passion lies in solving problems, develop optimised applications using complex algorithms and data structures. I am able to jump across verticals to deliver high-performing ML/Dl solutions. I love learning new things and automating my day to day work using Programming." +
                          "If you catch me outside of work, I'm a big eSports and an avid lover of music!",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.exo2(
                        fontSize: 16,
                        color: Colors.black,
                      ),
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
