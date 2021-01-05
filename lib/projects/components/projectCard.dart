import 'dart:ui';

import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  ProjectCard({
    Key key,
    this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
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
                      color: Colors.orange,
                      child: Image.asset(widget.imagePath),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('Project Name'),
                        Text('Project type'),
                        Text('Project decription'),
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
