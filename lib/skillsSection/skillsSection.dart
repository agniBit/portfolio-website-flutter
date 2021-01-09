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
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 0,
            runSpacing: 0,
            children: [
              SkillCard(
                iconBgColor: Colors.white,
                skillName: 'Machine Learning',
                skillLevel: .9,
                bgColor: Colors.blueAccent[100],
                percentIndicatorColor: Colors.white38,
                imageName: 'assets/images/ML.png',
              ),
              SkillCard(
                iconBgColor: Colors.white,
                skillName: 'Flutter Android/ios\napp development',
                skillLevel: .8,
                bgColor: Colors.redAccent[100],
                percentIndicatorColor: Colors.white38,
                imageName: 'assets/images/flutterIcon.png',
              ),
              SkillCard(
                iconBgColor: Colors.white,
                skillName: 'NLP',
                skillLevel: .8,
                bgColor: Colors.lime,
                percentIndicatorColor: Colors.white38,
                imageName: 'assets/images/NLP.png',
              ),
              SkillCard(
                iconBgColor: Colors.white,
                skillName: 'ReactJS Web Development',
                skillLevel: .9,
                bgColor: Colors.orange[300],
                percentIndicatorColor: Colors.white38,
                imageName: 'assets/images/reactJS.png',
              ),
              SkillCard(
                iconBgColor: Colors.white,
                skillName: 'NodeJS & Express\nBackend Development',
                skillLevel: .9,
                bgColor: Colors.yellow[200],
                percentIndicatorColor: Colors.white38,
                imageName: 'assets/images/nodeJS.png',
              ),
              SkillCard(
                iconBgColor: Colors.white,
                skillName: 'GTK+3 cross platform\napp development',
                skillLevel: .9,
                bgColor: Colors.purple[100],
                percentIndicatorColor: Colors.white38,
                imageName: 'assets/images/gtkIcon.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*
 #06beb6
→ 
#48b1bf 

#1c92d2
→ 
#f2fcfe 


#36d1dc
→ 
#5b86e5 




*/
