import 'package:flutter/material.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/utils/core/social_interection.dart';
import 'package:portfolio/views/screens/responsive_design.dart';

class MobileProfile extends StatelessWidget {
  const MobileProfile({super.key, required this.onContactNavigation});

  final Function(int)? onContactNavigation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstant.kIntro,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.black),
        ),
        Text(
          StringConstant.kProfileName,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.black),
        ),
        Text(
          StringConstant.designtaionText,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: ConstraintsConst.kDefaultHeight,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            InkWell(
              onTap: (){
                onContactNavigation!(4);
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
    );
  }
}
