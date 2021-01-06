import 'package:flutter/material.dart';
import 'package:portfolio/skillsSection/components/skillCard.dart';

class Skills extends StatelessWidget {
  const Skills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: mQ.width * .10, vertical: mQ.height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: mQ.width * .8,
            alignment: Alignment.centerLeft,
            child: Text(
              'My Skills',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            children: [
              SkillCard(
                iconBgColor: Colors.yellow[100],
                skillName: 'Machine Learning',
                skillLevel: .9,
                bgColor: Colors.lightGreen,
                percentIndicatorColor: Colors.deepOrange,
                imageName: 'assets/images/github.png',
              ),
              SkillCard(
                iconBgColor: Colors.yellow[100],
                skillName: 'Flutter Android/ios\napp development',
                skillLevel: .8,
                bgColor: Colors.lightGreen,
                percentIndicatorColor: Colors.deepOrange,
                imageName: 'assets/images/github.png',
              ),
              SkillCard(
                iconBgColor: Colors.yellow[100],
                skillName: 'NLP',
                skillLevel: .8,
                bgColor: Colors.lightGreen,
                percentIndicatorColor: Colors.deepOrange,
                imageName: 'assets/images/github.png',
              ),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              SkillCard(
                iconBgColor: Colors.yellow[100],
                skillName: 'ReactJS Web Development',
                skillLevel: .9,
                bgColor: Colors.lightGreen,
                percentIndicatorColor: Colors.deepOrange,
                imageName: 'assets/images/github.png',
              ),
              SkillCard(
                iconBgColor: Colors.yellow[100],
                skillName: 'NodeJS & Express\nBackend Development',
                skillLevel: .9,
                bgColor: Colors.lightGreen,
                percentIndicatorColor: Colors.deepOrange,
                imageName: 'assets/images/github.png',
              ),
              SkillCard(
                iconBgColor: Colors.yellow[100],
                skillName: 'GTK+3 cross platform\napp development',
                skillLevel: .9,
                bgColor: Colors.lightGreen,
                percentIndicatorColor: Colors.deepOrange,
                imageName: 'assets/images/github.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}
