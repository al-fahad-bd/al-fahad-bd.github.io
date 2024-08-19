import 'package:flutter/widgets.dart';

class EducationModel {
  String? degree;
  String? institute;
  String? duration;
  Widget? points;

  EducationModel({
    this.degree,
    this.institute,
    this.duration,
    this.points,
  });
}

class ExperienceModel {
  String? desig;
  String? compName;
  String? duration;
  Widget? points;

  ExperienceModel({
    this.desig,
    this.compName,
    this.duration,
    this.points,
  });
}

class ProjectModel {
  String? projectTitle;
  String? projectImage;
  String? projectContent;
  String? tech1;
  String? tech2;
  String? tech3;

  ProjectModel({
    this.projectTitle,
    this.projectContent,
    this.tech1,
    this.tech2,
    this.tech3,
    this.projectImage,
  });
}
