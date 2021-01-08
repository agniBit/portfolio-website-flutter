import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    double _width;
    if (MediaQuery.of(context).size.width >= 940) {
      setState(() {
        _width = MediaQuery.of(context).size.width * .39;
      });
    } else {
      setState(() {
        _width = MediaQuery.of(context).size.width * .8;
      });
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
          aspectRatio: 1.8,
          child: AnimatedContainer(
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
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 2,
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
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Project Name: ${widget.projectName}'),
                        Text('Project type: ${widget.category} '),
                        // Text('Project decription: ${widget.descriptionPoints}'),
                      ],
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
