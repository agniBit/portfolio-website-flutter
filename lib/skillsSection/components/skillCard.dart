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
    double _width;
    double width = MediaQuery.of(context).size.width;
    if (width <= 480) {
      setState(() {
        _width = width * .80 -30;
      });
    } else {
      if (width <= 768) {
        setState(() {
          _width = width * .40 - 30;
        });
      } else {
        setState(() {
          _width = width * .80/ 3 - 32;
        });
      }
    }
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        width: _width,
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
                clipBehavior: Clip.antiAlias,
                duration: Duration(
                  milliseconds: 100,
                ),
                width: _width/3,
                height: _width/3,
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
                  width: _width/2-20,
                  height: _width/2-20,
                )),
            SizedBox(
              height: 15,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: LinearPercentIndicator(
                    lineHeight: 15.0,
                    percent: widget.skillLevel,
                    progressColor: widget.percentIndicatorColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              height: (width<=768) ? 28 : 38,
              child: Text(
                widget.skillName,
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: (width<=768) ? 12 : 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
