// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';

import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(bottom: 70),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "01.",
                  style: TextStyle(
                      color: AppColors.neonColor,
                      fontSize: 20,
                      fontFamily: 'sfmono'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' About Me',
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    )
                  ],
                ),
              ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: AppColors.textLight,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Consumer(builder: (context, ref, child) {
                            var data = ref.watch(hoverProvider);
                            bool isHovered = (data == "profilePic");
                            return Stack(
                              children: [
                                Container(
                                  width: AppClass().getMqWidth(context) *
                                      (isHovered ? 0.22 * 2.5 : 0.225 * 2.5),
                                  height: AppClass().getMqWidth(context) *
                                      (isHovered ? 0.22 * 2.5 : 0.225 * 2.5),
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      border: Border.all(
                                          color: AppColors.neonColor,
                                          width: 1.5)),
                                ),
                                Listener(
                                  onPointerDown: (event) {
                                    ref.read(hoverProvider.notifier).state =
                                        "profilePic";
                                  },
                                  onPointerUp: (event) {
                                    ref.read(hoverProvider.notifier).state = "";
                                  },
                                  // onHover: (bol) {
                                  //   if (bol) {
                                  //     ref.read(hoverProvider.notifier).state =
                                  //         "profilePic";
                                  //   } else {
                                  //     ref.read(hoverProvider.notifier).state =
                                  //         "";
                                  //   }
                                  // },
                                  child: Container(
                                    width: AppClass().getMqWidth(context) *
                                        0.22 *
                                        2.5,
                                    height: AppClass().getMqWidth(context) *
                                        0.22 *
                                        2.5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              AppColors.primaryColor,
                                              isHovered
                                                  ? BlendMode.lighten
                                                  : BlendMode.color),
                                          image: AssetImage(
                                              'assets/svg/picture.png'),
                                        ),
                                        color: Colors.transparent),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        Strings.aboutPara1,
                        style: GoogleFonts.roboto(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPara2,
                        style: GoogleFonts.roboto(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPara3,
                        style: GoogleFonts.roboto(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.techIntro,
                        style: GoogleFonts.roboto(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          childAspectRatio: 4,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Strings.techPic1),
                                  Text(Strings.tech1,
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors.textLight,
                                        letterSpacing: 1,
                                        height: 1,
                                        fontSize: 13,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Strings.techPic2),
                                  Text(Strings.tech2,
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors.textLight,
                                        letterSpacing: 1,
                                        height: 1,
                                        fontSize: 13,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Strings.techPic3),
                                  Text(Strings.tech3,
                                      style: GoogleFonts.robotoFlex(
                                        color: AppColors.textLight,
                                        letterSpacing: 1,
                                        height: 1,
                                        fontSize: 13,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Strings.techPic4),
                                  Text(
                                    Strings.tech4,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors.textLight,
                                      letterSpacing: 1,
                                      height: 1,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Strings.techPic5),
                                  Text(
                                    Strings.tech5,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors.textLight,
                                      letterSpacing: 1,
                                      height: 1,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Strings.techPic6),
                                  Text(
                                    Strings.tech6,
                                    style: GoogleFonts.robotoFlex(
                                      color: AppColors.textLight,
                                      letterSpacing: 1,
                                      height: 1,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
