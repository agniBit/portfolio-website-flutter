import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
          minHeight: mQ.height,
      ),
      child: Container(
        width: mQ.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topRight,
            colors: [
              Color(0xff161f6d),
              Color(0xff004290),
              Color(0xff0064af),
              Color(0xff0088ca),
              Color(0xff00abe1)
            ]
          )
        ),
        child: Flex(
          direction: mQ.width > 768? Axis.horizontal: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: mQ.width > 768 ? mQ.width*.45 : mQ.width*.80,
              margin: mQ.width > 768 ? EdgeInsets.only(left: mQ.width * .10): EdgeInsets.only(left: mQ.width * .10,right: mQ.width * .10 ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, my name is',
                    style: GoogleFonts.vollkorn(
                      fontSize: mQ.width > 768? 22: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: mQ.width > 768? 15: 8,
                  ),
                  Text(
                    "Abhishek Agnihotri",
                    style: GoogleFonts.yatraOne(
                      fontSize: mQ.width > 768? 40: 24,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: mQ.width > 768? 15: 8,
                  ),
                  Text(
                    "And i'm Machine Learning enthusiast, MERN stack developer\nand learning Flutter development",
                    style: GoogleFonts.vollkorn(
                      fontSize: mQ.width > 768? 26: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: mQ.width > 768? 600: 300,
                ),
                child:Container(
                  width: mQ.width > 768? mQ.width*.40 : mQ.width*.80,
                  margin: mQ.width > 768? EdgeInsets.only(right: mQ.width * .10): EdgeInsets.symmetric(horizontal: mQ.width*.10, vertical: 0),
                  alignment: Alignment.center,
                  child: Lottie.asset('assets/17343-programming.json'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
