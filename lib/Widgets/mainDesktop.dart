import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Main_Desktop extends StatelessWidget {
  const Main_Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 461.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI Am Fatima Khanani FK\n A Flutter Developer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: customeColors.whitePrimery,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 275,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Get In Touch"),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: screenWidth,
              child: Image.asset(
                "assets/images/pink.jpg",
                width: screenWidth / 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
