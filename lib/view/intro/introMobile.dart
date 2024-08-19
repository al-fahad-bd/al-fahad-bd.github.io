import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class IntroMobile extends StatefulWidget {
  final AutoScrollController aScrollController;

  IntroMobile(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: AppClass().getMqHeight(context),
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.welcomeTxt,
                  style: TextStyle(
                      color: AppColors.neonColor,
                      fontSize: 18,
                      fontFamily: 'sfmono'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    Strings.name,
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      Strings.whatIdo,
                      style: GoogleFonts.robotoSlab(
                        color: AppColors.textLight,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    child: RichText(
                        text: TextSpan(
                            text: Strings.introAbout,
                            style: GoogleFonts.roboto(
                              color: AppColors.textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 17,
                            ),
                            children: <TextSpan>[
                          TextSpan(
                            text: Strings.currentOrgName,
                            style: GoogleFonts.roboto(
                              color: AppColors.neonColor,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 17,
                            ),
                          )
                        ])),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Consumer(builder: (context, ref, child) {
                      String val = ref.watch(hoverProvider);
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 25, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: AppClass().getMqHeight(context) * 0.07,
                              child: Listener(
                                onPointerDown: (event) async {
                                  ref.read(hoverProvider.notifier).state =
                                      "git";
                                  await launchUrl(Uri.parse(
                                      "https://github.com/al-fahad-bd"));
                                },
                                onPointerUp: (bol) {
                                  ref.read(hoverProvider.notifier).state = "";
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: val == "git" ? 5.0 : 0),
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SvgPicture.asset(
                                      'assets/svg/github.svg',
                                      colorFilter: val == "git"
                                          ? ColorFilter.mode(
                                              AppColors.neonColor,
                                              BlendMode.srcIn)
                                          : ColorFilter.mode(
                                              AppColors.textColor,
                                              BlendMode.srcIn),
                                      // color: val == "git"
                                      //     ? AppColors.neonColor
                                      //     : AppColors.textColor,
                                      width: 22),
                                ),
                              ),
                            ),
                            Container(
                              height: AppClass().getMqHeight(context) * 0.07,
                              child: Listener(
                                onPointerDown: (event) async {
                                  ref.read(hoverProvider.notifier).state =
                                      "insta";
                                  await launchUrl(Uri.parse(
                                      "https://www.instagram.com/_fahad.insta/"));
                                },
                                onPointerUp: (event) {
                                  ref.read(hoverProvider.notifier).state = "";
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: val == "insta" ? 5.0 : 0),
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SvgPicture.asset(
                                      'assets/svg/instagram.svg',
                                      colorFilter: val == "insta"
                                          ? ColorFilter.mode(
                                              AppColors.neonColor,
                                              BlendMode.srcIn)
                                          : ColorFilter.mode(
                                              AppColors.textColor,
                                              BlendMode.srcIn),
                                      width: 22),
                                ),
                              ),
                            ),
                            Container(
                              height: AppClass().getMqHeight(context) * 0.07,
                              child: Listener(
                                onPointerDown: (event) async {
                                  ref.read(hoverProvider.notifier).state =
                                      "linkedIn";
                                  await launchUrl(Uri.parse(
                                      "https://www.linkedin.com/in/al-fahad-bd/"));
                                },
                                onPointerUp: (event) {
                                  ref.read(hoverProvider.notifier).state = "";
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: val == "linkedIn" ? 5.0 : 0),
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SvgPicture.asset(
                                      'assets/svg/linkedIn.svg',
                                      colorFilter: val == "linkedIn"
                                          ? ColorFilter.mode(
                                              AppColors.neonColor,
                                              BlendMode.srcIn)
                                          : ColorFilter.mode(
                                              AppColors.textColor,
                                              BlendMode.srcIn),
                                      width: 22),
                                ),
                              ),
                            ),
                            Container(
                              height: AppClass().getMqHeight(context) * 0.07,
                              child: Listener(
                                onPointerDown: (event) async {
                                  ref.read(hoverProvider.notifier).state =
                                      "twitter";
                                  await launchUrl(
                                    Uri.parse(
                                        "https://twitter.com/a_al_fahad007"),
                                  );
                                },
                                onPointerUp: (event) {
                                  ref.read(hoverProvider.notifier).state = "";
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: val == "twitter" ? 5.0 : 0),
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SvgPicture.asset(
                                      'assets/svg/twitter.svg',
                                      colorFilter: val == "twitter"
                                          ? ColorFilter.mode(
                                              AppColors.neonColor,
                                              BlendMode.srcIn)
                                          : ColorFilter.mode(
                                              AppColors.textColor,
                                              BlendMode.srcIn),
                                      width: 22),
                                ),
                              ),
                            ),
                            Container(
                              height: AppClass().getMqHeight(context) * 0.07,
                              child: Listener(
                                onPointerDown: (event) async {
                                  ref.read(hoverProvider.notifier).state =
                                      "stackoverflow";
                                  await launchUrl(Uri.parse(
                                      "https://stackoverflow.com/users/17717985/abdullah-al-fahad"));
                                },
                                onPointerUp: (event) {
                                  ref.read(hoverProvider.notifier).state = "";
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: val == "stackoverflow" ? 5.0 : 0),
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: SvgPicture.asset(
                                      'assets/svg/stackoverflow.svg',
                                      colorFilter: val == "stackoverflow"
                                          ? ColorFilter.mode(
                                              AppColors.neonColor,
                                              BlendMode.srcIn)
                                          : ColorFilter.mode(
                                              AppColors.textColor,
                                              BlendMode.srcIn),
                                      width: 22),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                    onTap: () {
                      AppClass().downloadResume(context);
                    },
                    child: Container(
                      height: AppClass().getMqHeight(context) * 0.07,
                      width: AppClass().getMqWidth(context) * 0.5,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                          border: Border.all(
                              color: AppColors.neonColor, width: 1.5)),
                      child: Center(
                        child: Text(
                          'Download Resume',
                          style: TextStyle(
                              color: AppColors.neonColor,
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
