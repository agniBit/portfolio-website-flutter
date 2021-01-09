import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:portfolio/projects/components/projectCard.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  lodaFromJsonFile(context, String source) async {
    try {
      String jsonData = await DefaultAssetBundle.of(context).loadString(source);
      return jsonData;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    // var projectsData = ;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: mQ.width * .10, vertical: mQ.height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: mQ.width * .8,
            alignment: Alignment.centerLeft,
            child: Text(
              'Projects',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FutureBuilder<dynamic>(
            future: lodaFromJsonFile(context, 'assets/projectDetails.json'),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Widget> projectWidgets = [];
                var jsonData = json.decode(snapshot.data);
                for (int i = 0; i < jsonData['projects'].length; i++) {
                  var jData = jsonData['projects'][i];
                  BoxFit fit;
                  if (jData['fit'] == 'cover') {
                    fit = BoxFit.cover;
                  } else {
                    fit = BoxFit.contain;
                  }
                  projectWidgets.add(
                    ProjectCard(
                      category: jData['category'],
                      date: jData['date'],
                      projectName: jData['projectName'],
                      descriptionPoints: jData['descriptionPoints'].join('.\n'),
                      mediaLink: jData['mediaLink'],
                      githubLink: jData['githubLink'],
                      imageFit: fit,
                    ),
                  );
                }
                return Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 0,
                    runSpacing: 0,
                    children: projectWidgets);
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
