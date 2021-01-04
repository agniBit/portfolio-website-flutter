import 'package:flutter/material.dart';

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
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: mQ.width * .10,
            child: Image.asset(
              'assets/images/profilePicture.png',
              fit: BoxFit.cover,
              height: mQ.height * .85,
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
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Abhishek Agnihotri",
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "And i'm machine leaning and flutter developer",
                  style: TextStyle(
                    fontSize: 30,
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
