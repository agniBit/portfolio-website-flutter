import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillCard extends StatefulWidget {
  const SkillCard({
    Key key,
    @required this.iconBgColor,
    @required this.skillName,
    @required this.skillLevel,
    @required this.bgColor,
    @required this.percentIndicatorColor,
    @required this.imageName,
  }) : super(key: key);

  final Color bgColor, percentIndicatorColor, iconBgColor;
  final String skillName, imageName;
  final double skillLevel;

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
            milliseconds: 200,
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: widget.bgColor,
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
                    milliseconds: 100,
                  ),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: widget.iconBgColor,
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
                  child: Image.asset(
                    widget.imageName,
                    width: 100,
                    height: 100,
                  )),
              SizedBox(
                height: 10,
              ),
              LinearPercentIndicator(
                lineHeight: 20.0,
                percent: widget.skillLevel,
                progressColor: widget.percentIndicatorColor,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text(
                  widget.skillName,
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
