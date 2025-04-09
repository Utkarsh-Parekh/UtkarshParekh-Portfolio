import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/utils/core/social_interection.dart';
import 'package:portfolio/views/screens/responsive_design.dart';

class DesktopProfile extends StatelessWidget {
  const DesktopProfile({super.key, required this.onContactSection});

  final Function(int)? onContactSection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringConstant.kIntro,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
          ),
          Text(
            StringConstant.kProfileName,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.black),
            ),
          ),
          Text(
            StringConstant.designtaionText,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: ConstraintsConst.kDefaultHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  onContactSection!(4);
                },
                child: Container(
                  width: ResponsiveDesign.isMobile(context) ? 150 : 200,
                  height: ConstraintsConst.kSecondaryHeight,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.circular(ConstraintsConst.kPrimaryRadius),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                      child: Text(StringConstant.contactInfoText,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: ConstraintsConst.kDefaultHeight,
          ),
          const SocialInterection(
              iconSize: ConstraintsConst.kPrimaryDefaultIconSize)
        ],
      ),
    );
  }
}
