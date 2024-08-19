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

class ProjectTab extends ConsumerStatefulWidget {
  const ProjectTab({Key? key}) : super(key: key);

  @override
  ConsumerState<ProjectTab> createState() => _WorkWebState();
}

class _WorkWebState extends ConsumerState<ProjectTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(prefix: 'Latest', title: 'Projects'),
        // RichText(
        //   text: TextSpan(
        //     text: "04.",
        //     style: TextStyle(
        //         color: AppColors.neonColor,
        //         fontSize: 20,
        //         fontFamily: 'sfmono'),
        //     children: <TextSpan>[
        //       TextSpan(
        //         text: ' My Projects',
        //         style: GoogleFonts.roboto(
        //             color: Colors.white,
        //             letterSpacing: 1,
        //             fontWeight: FontWeight.bold,
        //             fontSize: 20),
        //       )
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'view the archives',
            style: TextStyle(
                color: AppColors.neonColor, fontSize: 16, fontFamily: 'sfmono'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(0),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(1),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(2),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(3),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(4),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(5),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(6),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(7),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Tile(index) {
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
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            textStyle: TextStyle(color: Colors.white24),
            preferBelow: true,
            verticalOffset: 20,
            child: Card(
              color: AppColors.cardColor.withOpacity(0.8),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/folder.svg',
                          width: isHovered ? 16 : 18,
                          height: isHovered ? 16 : 18,
                          colorFilter: isHovered
                              ? ColorFilter.mode(
                                  AppColors.textColor, BlendMode.srcIn)
                              : ColorFilter.mode(
                                  AppColors.neonColor, BlendMode.srcIn),
                        ),
                        SvgPicture.asset(
                          'assets/svg/externalLink.svg',
                          width: isHovered ? 16 : 18,
                          height: isHovered ? 16 : 18,
                          colorFilter: isHovered
                              ? ColorFilter.mode(
                                  AppColors.textColor, BlendMode.srcIn)
                              : ColorFilter.mode(
                                  AppColors.neonColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Flexible(
                      flex: 2,
                      child: Image(
                        // width: isHovered ? 110 : 130,
                        // height: isHovered ? 110 : 130,
                        image: AssetImage(
                            AppClass().projectList[index].projectImage ?? ""),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                      child: Row(
                        children: [
                          Text(
                            AppClass()
                                .projectList[index]
                                .projectTitle
                                .toString(),
                            textAlign: TextAlign.left,
                            style: GoogleFonts.robotoSlab(
                                color: isHovered
                                    ? AppColors.neonColor
                                    : AppColors.textColor,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: isHovered ? 15 : 17),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 5.0),
                        child: Text(
                          AppClass()
                              .projectList[index]
                              .projectContent
                              .toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 1,
                            height: 1.2,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AppClass().projectList[index].tech1.toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 1,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          AppClass().projectList[index].tech2.toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 1,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          AppClass().projectList[index].tech3.toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors.textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 12,
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
