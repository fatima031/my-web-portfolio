import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/project_card.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/projects_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenwidth,
      // color: Colors.blueGrey,

      child: Column(
        children: [
          // work projects title

          const Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: customeColors.whitePrimery,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          // work projects cards

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(
                    projects: workProjectUtils[i],
                  ),
              ],
            ),
          ),

          SizedBox(
            height: 80,
          ),

          //Hobby Projects

          const Text(
            "Hobby Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: customeColors.whitePrimery,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          // Hobby projects cards

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(
                    projects: hobbyProjectUtils[i],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
