import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ActionBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final AutoScrollController controller;

  ActionBar(this.controller, {Key? key}) : super(key: key);

  @override
  ConsumerState<ActionBar> createState() => _ActionBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ActionBarState extends ConsumerState<ActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        padding: EdgeInsets.only(right: 15.0, top: 20.0),
        child: () {
          ScreenType scrType = AppClass().getScreenType(context);
          if (scrType == ScreenType.mobile || scrType == ScreenType.tab) {
            return Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      'assets/svg/logo.png',
                      width: AppClass().getMqWidth(context) * 0.9,
                      height: AppClass().getMqHeight(context) * 0.9,
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PopupMenuButton(
                        constraints: const BoxConstraints.expand(
                            width: 160, height: 270),
                        offset: const Offset(-25, 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        color: AppColors.cardColor.withOpacity(0.9),
                        itemBuilder: (c) => <PopupMenuEntry>[
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(1,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.info_outline,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'About',
                                        style: GoogleFonts.robotoSlab(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(2,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.school_outlined,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Education',
                                        style: GoogleFonts.robotoSlab(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(3,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.travel_explore_rounded,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Experience',
                                        style: GoogleFonts.robotoSlab(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(4,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.devices_rounded,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Projects',
                                        style: GoogleFonts.robotoSlab(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(5,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.phone_rounded,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Contact',
                                        style: GoogleFonts.robotoSlab(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                        child: Icon(Icons.menu_rounded, size: 24),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
          return Row(
            children: [
              Expanded(
                  child: Container(
                      width: AppClass().getMqWidth(context) * 0.06,
                      height: AppClass().getMqHeight(context) * 0.06,
                      child: Image.asset(
                        'assets/svg/logo.png',
                      ))),
              Expanded(
                flex: 9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    /*Text(scrType.name),*/
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(1,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = "aboutTitle";
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text(
                              "01. ",
                              style: TextStyle(
                                color: AppColors.neonColor,
                                fontSize: 16,
                                fontFamily: 'sfmono',
                              ),
                            ),
                            Consumer(builder: (context, ref, child) {
                              String state = ref.watch(hoverProvider);
                              bool isHovered = (state == "aboutTitle");
                              return Text(
                                "About",
                                style: TextStyle(
                                  color: isHovered
                                      ? AppColors.neonColor
                                      : Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'sfmono',
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(2,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = "eduTitle";
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text("02. ",
                                style: TextStyle(
                                    color: AppColors.neonColor,
                                    fontSize: 16,
                                    fontFamily: 'sfmono')),
                            Consumer(builder: (context, ref, child) {
                              String state = ref.watch(hoverProvider);
                              bool isHovered = (state == "eduTitle");
                              return Text(
                                "Education",
                                style: TextStyle(
                                  color: isHovered
                                      ? AppColors.neonColor
                                      : Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'sfmono',
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(3,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = "expTitle";
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text(
                              "03. ",
                              style: TextStyle(
                                color: AppColors.neonColor,
                                fontSize: 16,
                                fontFamily: 'sfmono',
                              ),
                            ),
                            Consumer(builder: (context, ref, child) {
                              String state = ref.watch(hoverProvider);
                              bool isHovered = (state == "expTitle");
                              return Text(
                                "Experience",
                                style: TextStyle(
                                  color: isHovered
                                      ? AppColors.neonColor
                                      : Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'sfmono',
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(4,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state =
                              "projectTitle";
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text(
                              "04. ",
                              style: TextStyle(
                                color: AppColors.neonColor,
                                fontSize: 16,
                                fontFamily: 'sfmono',
                              ),
                            ),
                            Consumer(builder: (context, ref, child) {
                              String state = ref.watch(hoverProvider);
                              bool isHovered = (state == "projectTitle");

                              return Text(
                                "Projects",
                                style: TextStyle(
                                    color: isHovered
                                        ? AppColors.neonColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'sfmono'),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(5,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state =
                              "contactTitle";
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          children: [
                            Text(
                              "05.",
                              style: TextStyle(
                                color: AppColors.neonColor,
                                fontSize: 16,
                                fontFamily: 'sfmono',
                              ),
                            ),
                            Consumer(builder: (context, ref, child) {
                              String state = ref.watch(hoverProvider);
                              bool isHovered = (state == "contactTitle");
                              return Text(
                                "Contact",
                                style: TextStyle(
                                    fontFamily: 'sfmono',
                                    color: isHovered
                                        ? AppColors.neonColor
                                        : Colors.white,
                                    fontSize: 16),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppClass().downloadResume(context);
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(3.0)),
                            border: Border.all(
                                color: AppColors.neonColor, width: 1.5)),
                        child: Center(
                          child: Text('Resume',
                              style: TextStyle(
                                  color: AppColors.neonColor,
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sfmono')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }());
  }
}
