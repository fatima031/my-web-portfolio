import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/contact_section.dart';
import 'package:portfolio/Widgets/drawer.dart';
import 'package:portfolio/Widgets/footer.dart';
import 'package:portfolio/Widgets/headerMobile.dart';
import 'package:portfolio/Widgets/header_desktop.dart';
import 'package:portfolio/Widgets/mainDesktop.dart';
import 'package:portfolio/Widgets/main_mobile.dart';
import 'package:portfolio/Widgets/project_section.dart';
import 'package:portfolio/Widgets/skill_desktop.dart';
import 'package:portfolio/Widgets/skill_mobile.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: customeColors.scaffoldBg,
          endDrawer: Constraints.maxWidth >= kMinDesktopWidth
              ? null
              : Custom_Drawer(onNavItemTap: (int navIndex) {
                  //call function
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollTosection(navIndex);
                }),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                // MAIN

                if (Constraints.maxWidth >= kMinDesktopWidth)
                  Header_Desktop(onNavMenueTap: (int navIndex) {
                    // call or jump the function
                    scrollTosection(navIndex);
                  })
                else
                  HeaderMobile(
                    onLogoTab: () {},
                    onMenueTab: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                if (Constraints.maxWidth >= kMinDesktopWidth)
                  const Main_Desktop()
                else
                  const Main_Mobile(),

                // SKILLS
                Container(
                  key: navbarKeys[1],
                  // key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: customeColors.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // title
                      const Text(
                        "What I can do",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: customeColors.whitePrimery,
                        ),
                      ),
                      const SizedBox(height: 50),

                      // platforms and skills
                      if (Constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // // PROJECTS
                ProjectsSection(
                  key: navbarKeys[2],
                ),

                const SizedBox(
                  height: 50,
                ),
                // Contacts
                ContactSection(
                  key: navbarKeys[3],
                ),
                const SizedBox(
                  height: 30,
                ),

                // FOOTER
                Footer()
              ],
            ),
          ));
    });
  }

  void scrollTosection(int navIndex) {
    if (navIndex == 4) {
      //open a blog page
      js.context.callMethod('open', [SnsLinks.instagram]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
