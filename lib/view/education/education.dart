import 'package:flutter/material.dart';
import 'package:portfolio/resource/responsive.dart';

import 'educationMob.dart';
import 'educationTab.dart';
import 'educationWeb.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      webView: EducationWeb(),
      mobileView: EducationMob(),
      tabView: EducationTab(),
    );
  }
}
