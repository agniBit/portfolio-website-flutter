import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatefulWidget {
  ProjectCard({
    Key key,
    @required this.category,
    @required this.date,
    @required this.projectName,
    @required this.descriptionPoints,
    @required this.mediaLink,
    @required this.githubLink,
    this.imageFit,
  }) : super(key: key);

  final String category;
  final String date;
  final String projectName;
  final String descriptionPoints;
  final String mediaLink;
  final String githubLink;
  final BoxFit imageFit;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    double _aspectratio;
    double width = MediaQuery.of(context).size.width;
    double _width;
    int _breakPoint = 600;
    if (width >= 900) {
      setState(() {
        _width = width * .39;
      });
    } else {
      setState(() {
        _width = width * .79;
      });
    }
    if (width <= 530) {
      setState(() {
        _aspectratio = .6;
      });
    } else {
      if (width <= 600) {
        setState(() {
          _aspectratio = .8;
        });
      } else {
        if (width <= 768) {
          setState(() {
            _aspectratio = 2.1;
          });
        } else {
          setState(() {
            _aspectratio = 2.2;
          });
        }
      }
    }
    BoxFit fit;
    // ignore: unrelated_type_equality_checks
    if (widget.imageFit == null) {
      print('cover');
      fit = BoxFit.cover;
    } else {
      fit = widget.imageFit;
    }
    return Container(
      width: _width,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AspectRatio(
          aspectRatio: _aspectratio,
          child: AnimatedContainer(
            width: _width,
            duration: Duration(
              milliseconds: 100,
            ),
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
            child: Stack(
              children: [
                Flex(
                  direction:
                      (width <= _breakPoint) ? Axis.vertical : Axis.horizontal,
                  children: [
                    Expanded(
                      flex: (width <= _breakPoint) ? 3 : 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.orange,
                          child: Image.asset(
                            widget.mediaLink,
                            fit: fit,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: (width <= _breakPoint) ? 2 : 3,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '${widget.projectName}',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: (width <= 448) ? 16 : 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: (width <= 448) ? 10 : 20,
                            ),
                            Text(
                              widget.descriptionPoints,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.exo2(
                                fontSize: (width <= 448) ? 12 : 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      widget.category,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
