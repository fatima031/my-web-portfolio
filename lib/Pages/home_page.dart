import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Widgets/drawer.dart';
import 'package:portfolio/Widgets/headerMobile.dart';
import 'package:portfolio/Widgets/header_desktop.dart';
import 'package:portfolio/Widgets/mainDesktop.dart';
import 'package:portfolio/constants/size.dart';
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
      return SingleChildScrollView(
        child: Scaffold(
            key: scaffoldKey,
            backgroundColor: customeColors.scaffoldBg,
            endDrawer:
                Constraints.maxWidth >= kMinDesktop ? null : Custom_Drawer(),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // MAIN
      
                if (Constraints.maxWidth >= kMinDesktop)
                  Header_Desktop()
                else
                  HeaderMobile(
                    onLogoTab: () {},
                    onMenueTab: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
      
                // Main_Desktop(),
                Container(
                  height: screenHeight,
                  constraints: const BoxConstraints(minHeight: 560),
                  child: Column(
                    children: [
                      ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(colors: [
                              customeColors.scaffoldBg.withOpacity(0.6),
                              customeColors.scaffoldBg.withOpacity(0.6),
                            ]).createShader(bounds);
                            
                          },
                          blendMode: BlendMode.srcATop,
                          child: Image.asset(
                            "assets/images/WhatsApp Image 2023-11-21 at 1.08.48 AM (3).jpg",
                            width: screenWidth,
                          ),
                          ),
                   const   Text(
                        "Hi,\nI Am Fatima Khanani FK\n A Flutter Developer",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: customeColors.whitePrimery,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Get In Touch"),
                        ),
                      )
                    ],
                  ),
                ),
      
                // SKILLS
                Container(
                  height: 500,
                  width: double.maxFinite,
                  color: Colors.blueGrey,
                ),
      
                // PROJECTS
                Container(
                  height: 500,
                  width: double.maxFinite,
                  // color: Colors.blueGrey,
                ),
      
                // Contacts
                Container(
                  height: 500,
                  width: double.maxFinite,
                  color: Colors.blueGrey,
                ),
      
                // FOOTER
                Container(
                  height: 500,
                  width: double.maxFinite,
                  // color: Colors.blueGrey,
                ),
              ],
            )),
      );
    });
  }
}
