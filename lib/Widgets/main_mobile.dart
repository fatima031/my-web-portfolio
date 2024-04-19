import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Main_Mobile extends StatelessWidget {
  const Main_Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              "assets/images/pink.jpg",
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
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
    );
  }
}
