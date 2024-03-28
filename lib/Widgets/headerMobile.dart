import 'package:flutter/material.dart';

import '../styles/style.dart';
import 'side_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile(
      {super.key,  this.onLogoTab,  this.onMenueTab});
  final VoidCallback? onLogoTab;
  final VoidCallback? onMenueTab;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHederdecoration,
      child: Row(
        children: [
          Side_Logo(
            onTap: onLogoTab,
          ),
          Spacer(),
          IconButton(onPressed: onMenueTab, icon: Icon(Icons.menu)),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
