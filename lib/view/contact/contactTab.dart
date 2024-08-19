import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactTab extends ConsumerStatefulWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  ConsumerState<ContactTab> createState() => _ContactTabState();
}

class _ContactTabState extends ConsumerState<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context) - 70,
      padding: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''05.''',
                    style: TextStyle(
                        color: AppColors.neonColor,
                        fontSize: 14,
                        fontFamily: 'sfmono'),
                  ),
                  Text(
                    ''' What's next?''',
                    style: TextStyle(
                        color: AppColors.neonColor,
                        fontSize: 16,
                        fontFamily: 'sfmono'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Hire Me',
                  style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    Strings.endTxt,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: AppColors.textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 70),
                child: InkWell(
                  onTap: () async {
                    // showMessageDialog(context);
                    String email = Uri.encodeComponent("fahad.bauet@gmail.com");
                    String subject =
                        Uri.encodeComponent("Job opportunity for you");
                    String body =
                        Uri.encodeComponent("Hi! This job is about........");
                    print(subject); //output: Hello%20Flutter
                    Uri mail =
                        Uri.parse("mailto:$email?subject=$subject&body=$body");
                    if (await launchUrl(mail)) {
                      //email app opened
                    } else {
                      //email app is not opened
                    }
                  },
                  child: Container(
                    height: AppClass().getMqHeight(context) * 0.07,
                    width: AppClass().getMqWidth(context) * 0.25,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        border:
                            Border.all(color: AppColors.neonColor, width: 1.5)),
                    child: Center(
                      child: Text('Drop a message!',
                          style: TextStyle(
                              color: AppColors.neonColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '''Built & Developed by Fahad''',
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 12,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''© 2023 fahad.inc - all rights reserved''',
                  style: TextStyle(
                      color: AppColors.neonColor,
                      fontSize: 12,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}