import 'package:flutter/material.dart';
import 'package:portfolio/constants/skillItems.dart';

import '../constants/colors.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // platforms
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformsItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: customeColors.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    leading: Image.asset(
                      platformsItems[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platformsItems[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(width: 50),

        // skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < SkillItems.length; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    backgroundColor: customeColors.bgLight2,
                    label: Text(SkillItems[i]["title"]),
                    avatar: Image.asset(SkillItems[i]["img"]),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}