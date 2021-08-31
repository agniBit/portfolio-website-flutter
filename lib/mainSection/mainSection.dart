import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Container(
      height: mQ.height,
      width: mQ.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg2.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: mQ.width * .10,
            child: Image.asset(
              'assets/images/pic_0.png',
              fit: BoxFit.cover,
              height: mQ.height * .80,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: mQ.width * .10),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, my name is',
                  style: GoogleFonts.vollkorn(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Abhishek Agnihotri",
                  style: GoogleFonts.yatraOne(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "And i'm Machine Learning enthusiast, MERN stack developer\nand learning Flutter development",
                  style: GoogleFonts.vollkorn(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
