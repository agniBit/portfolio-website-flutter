import 'dart:convert';

class ProjectDetails {
  final String category;
  final String date;
  final String projectName;
  final String descriptionPoints;
  final String mediaLink;
  final String githubLink;

  ProjectDetails({
    this.category,
    this.date,
    this.projectName,
    this.descriptionPoints,
    this.mediaLink,
    this.githubLink,
  });

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'date': date,
      'projectName': projectName,
      'descriptionPoints': descriptionPoints,
      'mediaLink': mediaLink,
      'githubLink': githubLink,
    };
  }

  factory ProjectDetails.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return ProjectDetails(
      category: map['category'],
      date: map['date'],
      projectName: map['projectName'],
      descriptionPoints: map['descriptionPoints'],
      mediaLink: map['mediaLink'],
      githubLink: map['githubLink'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectDetails.fromJson(String source) => ProjectDetails.fromMap(json.decode(source));
}