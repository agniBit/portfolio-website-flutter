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
            children: [
              SkillCard(),
              SkillCard(),
              SkillCard(),
              SkillCard(),
              SkillCard()
            ],
          )
        ],
      ),
    );
  }
}
