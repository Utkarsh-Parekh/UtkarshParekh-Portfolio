import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/views/screens/responsive_design.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: ResponsiveDesign.isMobile(context) ?  BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 1) : null,
      margin: const EdgeInsets.symmetric(
          horizontal: ConstraintsConst.kdefaultMargin,
          vertical: ConstraintsConst.kPrimaryMargin),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            StringConstant.aboutTitle,
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black)),
          ),
          const SizedBox(
            height: ConstraintsConst.kHeight,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(ConstraintsConst.kprimaryPadding),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius:
                        BorderRadius.circular(ConstraintsConst.kPrimaryRadius)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.experienceTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displaySmall),
                    ),
                    Text(StringConstant.companyName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.titleLarge)),
                    Text(StringConstant.designtaionText,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.titleLarge))
                  ],
                ),
              ),
              const SizedBox(
                height: ConstraintsConst.kDefaultHeight,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: ConstraintsConst.kPrimaryMargin),
                child: Text(
                  StringConstant.kIntroduction,
                  textAlign: ResponsiveDesign.isMobile(context) ? TextAlign.justify : TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
