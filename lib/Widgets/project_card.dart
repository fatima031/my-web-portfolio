import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/projects_utils.dart';
import 'dart:js' as JS;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.projects});
  final ProjectUtils projects;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: customeColors.bgLight2),

      //project image
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projects.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projects.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: customeColors.whitePrimery),
            ),
          ),
          //subtitle

          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projects.subtitle,
              style:
                  TextStyle(fontSize: 12, color: customeColors.whiteSEcondary),
            ),
          ),
          Spacer(),

          //footer
          Container(
            color: customeColors.bgLight1,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Available",
                  style: TextStyle(
                      color: customeColors.yellowSecondary, fontSize: 10),
                ),
                Spacer(),
                if (projects.iosLink != null)
                  InkWell(
                    onTap: () {
                      JS.context.callMethod("Open", [projects.iosLink]);
                    },
                    child: Image.asset("assets/images/ios_icon.png", width: 19),
                  ),
                if (projects.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                        onTap: () {
                          JS.context.callMethod("Open", [projects.androidLink]);
                        },
                        child: Image.asset("assets/images/android_icon.png",
                            width: 17)),
                  ),
                if (projects.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        JS.context.callMethod("Open", [projects.webLink]);
                      },
                      child:
                          Image.asset("assets/images/web_icon.png", width: 17),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
