import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/contact_section.dart';
import 'package:portfolio/Widgets/custome_textField.dart';
// import 'package:flutter/rendering.dart';
import 'package:portfolio/Widgets/drawer.dart';
import 'package:portfolio/Widgets/headerMobile.dart';
import 'package:portfolio/Widgets/header_desktop.dart';
import 'package:portfolio/Widgets/mainDesktop.dart';
import 'package:portfolio/Widgets/main_mobile.dart';
// import 'package:portfolio/Widgets/headerMobile.dart';
// import 'package:portfolio/Widgets/header_desktop.dart';
// import 'package:portfolio/Widgets/mainDesktop.dart';
// import 'package:portfolio/Widgets/main_mobile.dart';
import 'package:portfolio/Widgets/project_card.dart';
import 'package:portfolio/Widgets/project_section.dart';
import 'package:portfolio/Widgets/skill_desktop.dart';
import 'package:portfolio/Widgets/skill_mobile.dart';
// import 'package:portfolio/Widgets/skill_desktop.dart';
// import 'package:portfolio/Widgets/skill_mobile.dart';
import 'package:portfolio/constants/size.dart';
// import 'package:portfolio/constants/skillItems.dart';
import 'package:portfolio/utils/projects_utils.dart';
// import 'package:portfolio/constants/colors.dart';
// import 'package:portfolio/constants/navItems.dart';
// import '../constants/navItems.dart';
import '../constants/colors.dart';
// import '../Widgets/drawer.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: customeColors.scaffoldBg,
          endDrawer:
              Constraints.maxWidth >= kMinDesktopWidth ? null : Custom_Drawer(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN

              // if (Constraints.maxWidth >= kMinDesktopWidth)
              //   Header_Desktop()
              // else
              //   HeaderMobile(
              //     onLogoTab: () {},
              //     onMenueTab: () {
              //       scaffoldKey.currentState?.openEndDrawer();
              //     },
              //   ),

              // if (Constraints.maxWidth >= kMinDesktopWidth)
              //   const Main_Desktop()
              // else
              //   const Main_Mobile(),

              // // SKILLS
              // Container(
              //   // key: navbarKeys[1],
              //   width: screenWidth,
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   color: customeColors.bgLight1,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       // title
              //       const Text(
              //         "What I can do",
              //         style: TextStyle(
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //           color: customeColors.whitePrimery,
              //         ),
              //       ),
              //       const SizedBox(height: 50),

              //       // platforms and skills
              //       if (Constraints.maxWidth >= kMedDesktopWidth)
              //         const SkillsDesktop()
              //       else
              //         const SkillsMobile(),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 30,),

              // // PROJECTS
              // ProjectsSection(),

              // SizedBox(height: 50,),
              // Contacts
              ContactSection(),

              // FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                // color: Colors.blueGrey,
              ),
            ],
          ));
    });
  }
}
