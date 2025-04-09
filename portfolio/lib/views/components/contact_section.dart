import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/utils/core/social_interection.dart';
import 'package:portfolio/utils/core/custom_textfield.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: ConstraintsConst.kdefaultMargin),
      child: Column(
        children: [
          Text(
            StringConstant.kContactUsHeader,
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black)),
          ),
          const SizedBox(
            height: ConstraintsConst.kDefaultHeight,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: ConstraintsConst.kBoxconstraintWidth,
                  maxHeight: 100),
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >=
                    ConstraintsConst.kConstraintsWidth) {
                  return getEmailDesktop;
                } else {
                  return getEmailMobile;
                }
              })),
          const SizedBox(
            height: ConstraintsConst.kprimaryHeight,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
                maxWidth: ConstraintsConst.kBoxconstraintWidth),
            child: const CustomTextfield(
              hintText: StringConstant.kMessageField,
              maxLines: 15,
            ),
          ),
          const SizedBox(
            height: ConstraintsConst.kprimaryHeight,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
                maxWidth: ConstraintsConst.kBoxconstraintWidth),
            child: SizedBox(
              width: double.maxFinite,
              height: ConstraintsConst.kDefaultIconSize,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent),
                child: Text(
                  StringConstant.kContactUsHeader,
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.white)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: ConstraintsConst.kPrimaryConstraintsWidth),
              child: const Divider(
                height: 2,
                color: Colors.grey,
              ),
            ),
          ),
          const SocialInterection(iconSize: ConstraintsConst.kPrimaryDefaultIconSize)
        ],
      ),
    );
  }

  Row get getEmailDesktop {
    return const Row(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: StringConstant.kNameField,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextfield(
            hintText: StringConstant.kEmailField,
          ),
        ),
      ],
    );
  }

  Column get getEmailMobile {
    return const Column(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: StringConstant.kNameField,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextfield(
            hintText: StringConstant.kEmailField,
          ),
        ),
      ],
    );
  }
}
