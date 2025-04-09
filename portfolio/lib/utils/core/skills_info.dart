import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/skills_items.dart';
import 'package:portfolio/constants/string_constant.dart';

class SkillsInfo extends StatelessWidget {
  const SkillsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
            horizontal: ConstraintsConst.kdefaultMargin,
            vertical: ConstraintsConst.kdefaultMargin),
        child: Column(
          children: [
            Text(
              StringConstant.skillsTitle,
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.black)),
            ),
            const SizedBox(
              height: ConstraintsConst.kDefaultHeight,
            ),
            Text(
              StringConstant.skillsSubtitle,
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black)),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Wrap(
                    spacing: ConstraintsConst.kdefaultSpcing,
                    runSpacing: ConstraintsConst.kdefaultSpcing,
                    alignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < skillSet.length; i++)
                        Chip(
                          padding: const EdgeInsets.all(
                              ConstraintsConst.kSecondPadding),
                          label: Text(
                            skillSet[i]['title'],
                            style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.titleMedium),
                          ),
                          avatar: Image.asset(
                            skillSet[i]['image'],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
