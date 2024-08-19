import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resource/responsive.dart';

import 'package:portfolio/view/project/projectLarge.dart';
import 'package:portfolio/view/project/projectMobile.dart';
import 'package:portfolio/view/project/projectTab.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: ProjectTab(),
      webView: ProjectWeb(),
      mobileView: ProjectMobile(),
    );
  }
}
