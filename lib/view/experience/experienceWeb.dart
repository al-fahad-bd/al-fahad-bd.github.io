import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/resource/title_text.dart';

import '../../controller/generalController.dart';
import '../../model/models.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ExperienceWeb extends StatefulWidget {
  const ExperienceWeb({Key? key}) : super(key: key);

  @override
  State<ExperienceWeb> createState() => _ExperienceWebState();
}

class _ExperienceWebState extends State<ExperienceWeb> {
  @override
  Widget build(BuildContext context) {
    List<ExperienceModel> experienceList = [
      ExperienceModel(
        desig: Strings.expDesig3,
        compName: Strings.expCompName3,
        duration: Strings.expDur3,
        points: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout3,
                      style: TextStyle(
                        color: AppColors.textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 16,
                        fontFamily: 'sfmono',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout3_2,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout3_3,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ExperienceModel(
        desig: Strings.expDesig2,
        compName: Strings.expCompName2,
        duration: Strings.expDur2,
        points: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout2,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout2_2,
                      style: TextStyle(
                        color: AppColors.textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 16,
                        fontFamily: 'sfmono',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout2_3,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ExperienceModel(
        desig: Strings.expDesig1,
        compName: Strings.expCompName1,
        duration: Strings.expDur1,
        points: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout1,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout1_2,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.neonColor,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: AppClass().getMqWidth(context) * 0.35,
                    child: Text(
                      Strings.expAbout1_3,
                      style: TextStyle(
                          color: AppColors.textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'sfmono'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];

    return Container(
      height: AppClass().getMqHeight(context) - 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 0.5,
                margin: EdgeInsets.only(right: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: AppColors.textLight,
              ),
              TitleText(prefix: 'My', title: 'Experience'),
              // RichText(
              //   text: TextSpan(
              //       text: "03.",
              //       style: TextStyle(
              //           color: AppColors.neonColor,
              //           fontSize: 20,
              //           fontFamily: 'sfmono'),
              //       children: <TextSpan>[
              //         TextSpan(
              //           text: ''' Experience''',
              //           style: GoogleFonts.robotoSlab(
              //               color: Colors.white,
              //               letterSpacing: 1,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 24),
              //         )
              //       ]),
              // ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: AppColors.textLight,
              ),
            ],
          ),
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context) * 0.6,
              margin: EdgeInsets.only(top: 30.0, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            ref.read(selectedExpProvider.notifier).state = 0;
                          },
                          child: Container(
                            decoration: data == 0
                                ? BoxDecoration(
                                    color: AppColors.cardColor,
                                    borderRadius: BorderRadius.only(
                                      // bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  )
                                : null,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  // color: data == 0
                                  //     ? AppColors.cardColor
                                  //     : Colors.transparent,
                                  border: Border(
                                      left: BorderSide(
                                          color: data == 0
                                              ? AppColors.neonColor
                                              : Colors.white,
                                          width: 2))),
                              child: Text(
                                'Lab AR',
                                style: TextStyle(
                                    color: data == 0
                                        ? AppColors.neonColor
                                        : AppColors.textLight,
                                    letterSpacing: 1,
                                    height: 1.5,
                                    fontSize: 16,
                                    fontFamily: 'sfmono'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ref.read(selectedExpProvider.notifier).state = 1;
                          },
                          child: Container(
                            decoration: data == 1
                                ? BoxDecoration(
                                    color: AppColors.cardColor,
                                    borderRadius: BorderRadius.only(
                                      // bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  )
                                : null,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  // color: data == 1
                                  //     ? AppColors.cardColor
                                  //     : Colors.transparent,
                                  border: Border(
                                      left: BorderSide(
                                          color: data == 1
                                              ? AppColors.neonColor
                                              : Colors.white,
                                          width: 2))),
                              child: Text(
                                'IBCS-Primax',
                                style: TextStyle(
                                    color: data == 1
                                        ? AppColors.neonColor
                                        : AppColors.textLight,
                                    letterSpacing: 1,
                                    height: 1.5,
                                    fontSize: 16,
                                    fontFamily: 'sfmono'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ref.read(selectedExpProvider.notifier).state = 2;
                          },
                          child: Container(
                            decoration: data == 2
                                ? BoxDecoration(
                                    color: AppColors.cardColor,
                                    borderRadius: BorderRadius.only(
                                      // bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  )
                                : null,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  // color: data == 2
                                  //     ? AppColors.cardColor
                                  //     : Colors.transparent,
                                  border: Border(
                                      left: BorderSide(
                                          color: data == 2
                                              ? AppColors.neonColor
                                              : Colors.white,
                                          width: 2))),
                              child: Text(
                                'Suffix IT',
                                style: TextStyle(
                                    color: data == 2
                                        ? AppColors.neonColor
                                        : AppColors.textLight,
                                    letterSpacing: 1,
                                    height: 1.5,
                                    fontSize: 16,
                                    fontFamily: 'sfmono'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: experienceList[data].desig,
                            style: GoogleFonts.roboto(
                              color: AppColors.neonColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: experienceList[data].compName,
                            style: GoogleFonts.roboto(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          experienceList[data].duration.toString(),
                          style: TextStyle(
                              color: AppColors.textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 14,
                              fontFamily: 'sfmono'),
                        ),
                        experienceList[data].points ?? widget
                      ],
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
