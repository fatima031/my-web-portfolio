import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/side_logo.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/navItems.dart';
import 'package:portfolio/styles/style.dart';

class Header_Desktop extends StatelessWidget {
  Header_Desktop({super.key, required this.onNavMenueTap});
  final Function(int) onNavMenueTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHederdecoration,
      // color: Colors.blueGrey,
      child: Row(
        children: [
          Side_Logo(
            onTap: () {},
          ),
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: TextButton(
                onPressed: () {
                  onNavMenueTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: customeColors.whitePrimery),
                ),
              ),
            )
        ],
      ),
    );
  }
}
