import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Widgets/custome_textField.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'dart:js' as js;

import 'package:portfolio/constants/sns_links.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: customeColors.bgLight1,
      child: Column(
        children: [
          //title

          const Text(
            "Get in touch",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: customeColors.whitePrimery),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
                maxHeight: 100),
              child: LayoutBuilder(builder: (context, Constraints) {
                if (Constraints.maxWidth >= kMinDesktopWidth) {
                  return buildnameEmailFieldDesktop();
                }
                //else
                return buildnameEmailFieldMobile();
              })),
          SizedBox(height: 20),
          //message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: const CustomeTextField(
              hintText: "Your Message",
              maxLines: 15,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // send button
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Get In Touch",
                    ))),
          ),
          SizedBox(
            height: 30,
          ),
          ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: const Divider()),
          SizedBox(
            height: 15,
          ),

          //SNS Icons button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.gitHub]);

                  },
                  child: Image.asset(
                    "assets/images/github.png",
                    width: 28,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.facebook]);
                  },
                  child: Image.asset(
                    "assets/images/facebook.png",
                    width: 28,
                  )),
              InkWell(
                  onTap: () {js.context.callMethod('open', [SnsLinks.instagram]);},
                  child: Image.asset(
                    "assets/images/instagram.png",
                    width: 28,
                  )),
              InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.linkedIn]);
                  },
                  child: Image.asset(
                    "assets/images/linkedin.png",
                    width: 28,
                  ))
            ],
          )
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return Row(
      children: [
        // name
        Flexible(
          child: CustomeTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          width: 15,
        ),
        //email
        Flexible(
          child: CustomeTextField(
            hintText: "Your email",
          ),
        )
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return Column(
      children: [
        // name
        Flexible(
          child: CustomeTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //email
        Flexible(
          child: CustomeTextField(
            hintText: "Your email",
          ),
        )
      ],
    );
  }
}
