import 'package:flutter/material.dart';
// import 'package:portfolio/constants/navItems.dart';
import '../constants/colors.dart';
import '../constants/navItems.dart';

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: customeColors.scaffoldBg,
      child: ListView(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close)),
          ),
        ),
        for (int i = 0; i < navIcons.length; i++)
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 30),
            titleTextStyle: const TextStyle(
                color: customeColors.whitePrimery,
                fontSize: 16,
                fontWeight: FontWeight.w600),
            onTap: () {},
            leading: Icon(navIcons[i]),
            title: Text(navTitles[i]),
          )
      ]),
    );
  }
}
