import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillSeaction extends StatelessWidget {
  const SkillSeaction({Key key}) : super(key: key);

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
            ],
          )
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              Icons.design_services,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: Colors.orange,
            ),
            SizedBox(
              height: 10,
            ),
            Text('App Development')
          ],
        ),
      ),
    );
  }
}
