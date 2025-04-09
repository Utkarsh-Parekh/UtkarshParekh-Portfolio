import 'package:flutter/material.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/utils/core/about_me.dart';
import 'package:portfolio/utils/core/profile_picture.dart';
import 'package:portfolio/utils/core/skills_info.dart';
import 'package:portfolio/views/components/contact_section.dart';
import 'package:portfolio/views/components/desktop_nav.dart';
import 'package:portfolio/views/components/desktop_profile.dart';
import 'package:portfolio/views/components/footer.dart';
import 'package:portfolio/views/components/mobile_drawer.dart';
import 'package:portfolio/views/components/mobile_nav.dart';
import 'package:portfolio/views/components/mobile_profile.dart';
import 'package:portfolio/views/components/project_list.dart';

class PortFolioPage extends StatefulWidget {
  const PortFolioPage({super.key});

  @override
  State<PortFolioPage> createState() => _PortFolioPageState();
}

class _PortFolioPageState extends State<PortFolioPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final scrollControllerKey = ScrollController();
  final List<GlobalKey> navigationKey =
      List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _globalKey,
          endDrawer: MyDrawer(
            onNavItemTap: (int navIndex) {
              _globalKey.currentState!.closeEndDrawer();
              scrollToSections(navIndex);
            },
          ),
          body: SingleChildScrollView(
            controller: scrollControllerKey,
            scrollDirection: Axis.vertical,
            child: Column(
              key: navigationKey.first,
              children: [
                //Header

                if (constraints.maxWidth >= ConstraintsConst.kMaxScreenWidth)
                  DesktopNav(
                    onNavItemDesktopTap: (int navindex) {
                      scrollToSections(navindex);
                    },
                  )
                else
                  MobileNav(onPressedMenu: () {
                    _globalKey.currentState!.openEndDrawer();
                  }),

                //Profile Page
                constraints.maxWidth >= ConstraintsConst.kMaxScreenWidth
                    ? Container(
                        constraints: const BoxConstraints(
                            maxHeight: ConstraintsConst.kConstraintsWidth),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: ConstraintsConst.kDefaultPrimaryHeight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const ProfilePicture(
                                    radius: ConstraintsConst.kSecondaryRadius),
                                DesktopProfile(
                                 onContactSection:(int index){
                                   scrollToSections(4);
                                 },
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Container(
                        constraints: const BoxConstraints(
                            maxHeight:
                                ConstraintsConst.kSecondartConstraintsWidth),
                        child: Column(
                          children: [
                            const ProfilePicture(
                                radius: ConstraintsConst.kPrimaryDefailtRadius),
                            const SizedBox(
                              height: ConstraintsConst.kDefaultHeight,
                            ),
                            MobileProfile(
                              onContactNavigation: (int navIndex){
                                scrollToSections(4);
                              },
                            ),
                          ],
                        ),
                      ),
                const SizedBox(
                  height: ConstraintsConst.kDefaultSecondaryHeight,
                ),
                //About Me
                AboutMe(
                  key: navigationKey[1],
                ),

                const SizedBox(
                  height: ConstraintsConst.kDefaultSecondaryHeight,
                ),

                //Skills Section
                SkillsInfo(
                  key: navigationKey[2],
                ),

                const SizedBox(
                  height: ConstraintsConst.kDefaultSecondaryHeight,
                ),

                //Projects Section
                ProjectList(
                  key: navigationKey[3],
                ),

                const SizedBox(
                  height: ConstraintsConst.kDefaultSecondaryHeight,
                ),

                //Contact Secton
                ContactUS(
                  key: navigationKey[4],
                ),

                const SizedBox(
                  height: ConstraintsConst.kDefaultHeight,
                ),

                //Footer
                const Footer()
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSections(int navIndex) {
    final key = navigationKey[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
