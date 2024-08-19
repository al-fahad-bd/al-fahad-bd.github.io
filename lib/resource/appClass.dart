import 'package:flutter/material.dart';
import 'package:portfolio/model/models.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/styles.dart';
import 'package:url_launcher/url_launcher.dart';

enum ScreenType { mobile, tab, web }

class AppClass {
  static final AppClass _mAppClass = AppClass._internal();
  static BuildContext? lastContext;
  ScrollController controller = ScrollController();

  /* URL */
  static final resumeDownloadURL =
      '''https://drive.google.com/file/d/1MFBv3wpx36vweeKVSI65DQmKR9AvduCe/view''';

  static final gitSmartWallet =
      '''https://github.com/al-fahad-bd/Smart-Wallet''';

  static final gitApiTester = '''https://github.com/al-fahad-bd/api_tester''';
  static final gitThingsToDo = '''https://github.com/al-fahad-bd/To-Do-App''';
  static final gitNotePad = '''https://github.com/al-fahad-bd/notepad''';
  static final gitHRMSystem = '''https://github.com/al-fahad-bd/HRM-App''';
  static final playStoreBracHealth =
      '''https://play.google.com/store/apps/details?id=com.brach.brachealthcare&hl=en''';
  static final playStoreSpecializedHospital = '''  ''';

  List<ProjectModel> projectList = [
    ProjectModel(
      projectTitle: "Smart-Wallet",
      projectImage: 'assets/svg/smartWalletApp.png',
      projectContent:
          "A Smart Wallet UI build with Flutter and designed using Figma",
      tech1: "Flutter",
      tech2: "UI",
      tech3: "Figma",
    ),
    ProjectModel(
      projectTitle: "API Tester",
      projectImage: 'assets/svg/apiTesterApp.png',
      projectContent:
          "This app is build to test the Fake APIs particularly from JSON Placeholder APIs which includes 100 posts.",
      tech1: "Flutter",
      tech2: "Fake API",
      tech3: "Postman",
    ),
    ProjectModel(
      projectTitle: "Things To Do",
      projectImage: 'assets/svg/ToDoApp.png',
      projectContent:
          '''It's a simple To Do List App to store your daily tasks or things you wish to do.''',
      tech1: "Flutter",
      tech2: "Navigation",
      tech3: "Sqflite",
    ),
    ProjectModel(
      projectTitle: "Note Pad",
      projectImage: 'assets/svg/NotePadApp.png',
      projectContent:
          '''The purpose of this app is to take notes of daily activities. The CRUD functionality is also available.''',
      tech1: "Flutter",
      tech2: "Form",
      tech3: "Sqflite",
    ),
    ProjectModel(
      projectTitle: "HRM System",
      projectImage: 'assets/svg/HRM-App.png',
      projectContent:
          '''This application is build to used in an organization to take the daily attecdence of employees.''',
      tech1: "Flutter",
      tech2: "Authentication",
      tech3: "Firebase",
    ),
    ProjectModel(
      projectTitle: "BD Specialized Hospital",
      projectImage: 'assets/svg/specialized_hospital_app.png',
      projectContent:
          "A Digital Healthcare soulution build for Bangladesh Specialized Hospital",
      tech1: "Flutter",
      tech2: "Bloc",
      tech3: "Clean Architecture",
    ),
    ProjectModel(
      projectTitle: "Brac-Healthcare",
      projectImage: 'assets/svg/brac-healthcare-app.png',
      projectContent:
          "A Mordern Healthcare app build for Brac Healthcare organization",
      tech1: "Flutter",
      tech2: "Bloc",
      tech3: "Clean Architecture",
    ),
    ProjectModel(
      projectTitle: "Upcoming",
      projectImage: 'assets/svg/coming-soon.gif',
      projectContent: '''Upcoming - Project''',
      tech1: "Flutter",
      tech2: "Dart",
      tech3: "FLUF Stack",
    ),
  ];

  factory AppClass() {
    return _mAppClass;
  }

  AppClass._internal();

  getMqWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  getMqHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // showSnackBar(String msg, {BuildContext? context}) {
  //   ScaffoldMessenger.of(context ?? lastContext!)
  //       .showSnackBar(SnackBar(content: Text(msg)));
  // }

  ScreenType getScreenType(BuildContext context) {
    double scrWidth = getMqWidth(context);
    if (scrWidth >= 1200) {
      return ScreenType.web;
    } else if (scrWidth >= 768) {
      return ScreenType.tab;
    } else {
      return ScreenType.mobile;
    }
  }
  //   if (scrWidth > 915) {
  //     return ScreenType.web;
  //   } else if (scrWidth < 650) {
  //     return ScreenType.mobile;
  //   }
  //   return ScreenType.tab;
  // }

  downloadResume(context) async {
    await launchUrl(Uri.parse(AppClass.resumeDownloadURL));
  }

  alertDialog(context, title, msg) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: Text(title, style: TxtStyle().boldWhite(context)),
                content: Text(msg),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.cardColor,
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text('Okay'))
                ]));
  }

  // Future<bool> sendEmail(name, contact, msg) async {
  //   var url = Uri.https('hbk-portfolio-mailer.web.app', '/sendMail');
  //   var response = await post(url,
  //           body: {"name": name, "contactInfo": contact, "message": msg})
  //       .timeout(Duration(seconds: 10));
  //   print(response.body);
  //   return response.statusCode == 200;
  // }
}
