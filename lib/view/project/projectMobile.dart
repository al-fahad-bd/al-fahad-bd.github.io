import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/resource/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resource/colors.dart';

class ProjectMobile extends ConsumerStatefulWidget {
  const ProjectMobile({Key? key}) : super(key: key);

  @override
  ConsumerState<ProjectMobile> createState() => _WorkWebState();
}

class _WorkWebState extends ConsumerState<ProjectMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(prefix: 'Latest', title: 'Projects'),
        // RichText(
        //   text: TextSpan(
        //       text: "04.",
        //       style: TextStyle(
        //           color: AppColors.neonColor,
        //           fontSize: 20,
        //           fontFamily: 'sfmono'),
        //       children: <TextSpan>[
        //         TextSpan(
        //           text: ' My Projects',
        //           style: GoogleFonts.roboto(
        //               color: Colors.white,
        //               letterSpacing: 1,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 20),
        //         )
        //       ]),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'view the archives',
            style: TextStyle(
              color: AppColors.neonColor,
              fontSize: 14,
              fontFamily: 'sfmono',
            ),
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(top: 30.0, bottom: 50.0, left: 30, right: 30),
          child: StaggeredGrid.count(
            crossAxisCount: 1,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 0),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 1),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 2),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 3),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 4),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 5),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 6),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 7),
              ),
            ],
          ),
        ),
      ],
    );
  }

  getTile({required int index}) {
    return InkWell(
      onTap: () async {
        switch (index) {
          case 0:
            await launchUrl(Uri.parse(AppClass.gitSmartWallet));
            break;

          case 1:
            await launchUrl(Uri.parse(AppClass.gitApiTester));
            break;

          case 2:
            await launchUrl(Uri.parse(AppClass.gitThingsToDo));
            break;

          case 3:
            await launchUrl(Uri.parse(AppClass.gitNotePad));
            break;

          case 4:
            await launchUrl(Uri.parse(AppClass.gitHRMSystem));
            break;

          case 5:
            await launchUrl(Uri.parse(AppClass.playStoreSpecializedHospital));
            break;

          case 6:
            await launchUrl(Uri.parse(AppClass.playStoreBracHealth));
            break;

          case 7:
            AppClass().alertDialog(context, 'Not Found',
                'Sorry the project you requested not found in the repository');
            break;
        }
      },
      onHover: (bool) {
        if (bool) {
          ref.read(hoverProvider.notifier).state = "$index";
        } else {
          ref.read(hoverProvider.notifier).state = "";
        }
      },
      child: Consumer(builder: (context, ref, child) {
        String data = ref.watch(hoverProvider);
        bool isHovered = (data == "$index");
        return Container(
          margin: EdgeInsets.all(isHovered ? 8.0 : 0.0),
          child: Tooltip(
            message: AppClass().projectList[index].projectTitle.toString() +
                "\n\n" +
                AppClass().projectList[index].projectContent.toString(),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(AppClass().getMqWidth(context) * 0.1),
            waitDuration: Duration(seconds: 3),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.9),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            textStyle: TextStyle(color: Colors.white24),
            preferBelow: true,
            verticalOffset: 20,
            child: Card(
              color: AppColors.cardColor.withOpacity(0.8),
              elevation: 20,
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/folder.svg',
                          width: 14,
                          height: 14,
                          colorFilter: isHovered
                              ? ColorFilter.mode(
                                  AppColors.textColor, BlendMode.srcIn)
                              : ColorFilter.mode(
                                  AppColors.neonColor, BlendMode.srcIn),
                        ),
                        SvgPicture.asset(
                          'assets/svg/externalLink.svg',
                          width: 12,
                          height: 12,
                          colorFilter: isHovered
                              ? ColorFilter.mode(
                                  AppColors.textColor, BlendMode.srcIn)
                              : ColorFilter.mode(
                                  AppColors.neonColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Flexible(
                      flex: 2,
                      child: Image(
                        fit: BoxFit.contain,
                        // width: isHovered ? 140 : 160,
                        // height: isHovered ? 140 : 160,
                        image: AssetImage(
                            AppClass().projectList[index].projectImage ?? ''),
                      ),
                    ),
                    Text(
                      AppClass().projectList[index].projectTitle.toString(),
                      textAlign: TextAlign.left,
                      style: GoogleFonts.robotoSlab(
                          color: isHovered
                              ? AppColors.neonColor
                              : AppColors.textColor,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      AppClass().projectList[index].projectContent.toString(),
                      style: GoogleFonts.roboto(
                        color: AppColors.textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AppClass().projectList[index].tech1 ?? "",
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 0,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          AppClass().projectList[index].tech2 ?? "",
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 0,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          AppClass().projectList[index].tech3 ?? "",
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 0,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
