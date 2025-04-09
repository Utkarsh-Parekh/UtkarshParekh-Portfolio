import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialInterection extends StatelessWidget {
  const SocialInterection({super.key, this.iconSize});

  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: ConstraintsConst.kdefaultSpcing,
      alignment: WrapAlignment.center,
      children: [
        InkWell(
          onTap: () {
            launchLinkedin();
          },
          child: FaIcon(
            FontAwesomeIcons.linkedin,
            size: iconSize,
            color: Colors.blueAccent,
          ),
        ),
        InkWell(
          onTap: () {
            launchGithub();
          },
          child: FaIcon(
            FontAwesomeIcons.github,
            size: iconSize,
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     launchGmail();
        //   },
        //   child:Icon()
        //   // Image.asset(
        //   //   "assets/images/gmail_logo.png",
        //   //   width: ConstraintsConst.kPrimaryDefaultIconSize,
        //   //   height: ConstraintsConst.kPrimaryDefaultIconSize,
        //   // ),
        // ),
      ],
    );
  }
}

dynamic launchLinkedin() async {
  try {
    Uri linkedin = Uri(scheme: 'https', path: StringConstant.linkedinLink);
    await launchUrl(linkedin, mode: LaunchMode.externalApplication);
  } catch (e) {
    debugPrint(e.toString());
  }
}

dynamic launchGithub() async {
  try {
    Uri github = Uri(scheme: 'https', path: StringConstant.githubLink);
    await launchUrl(github, mode: LaunchMode.externalApplication);
  } catch (e) {
    debugPrint(e.toString());
  }
}

dynamic launchGmail() async {
  try {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'parekhutkarsh024@gmail.com',
    );
    await launchUrl(emailLaunchUri);
  } catch (e) {
    debugPrint(e.toString());
  }
}
