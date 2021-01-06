import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillCard extends StatefulWidget {
  const SkillCard({
    Key key,
  }) : super(key: key);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: Duration(
            milliseconds: 100,
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (!isHover)
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
            ],
          ),
          child: Column(
            children: [
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 200,
                ),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    if (isHover)
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 7,
                        offset: Offset(5, 5),
                      )
                    else
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(1, 0),
                      )
                  ],
                ),
                child: Icon(
                  Icons.design_services,
                  size: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LinearPercentIndicator(
                lineHeight: 20.0,
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
      ),
    );
  }
}