import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/utils/projects/project_info.dart';
import 'package:portfolio/views/components/project_card.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: ConstraintsConst.kdefaultMargin),
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height / 1,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(ConstraintsConst.kPrimaryRadius)),
      child: Column(
        children: [
          Text(
            StringConstant.projectTitle,
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black)),
          ),
          const SizedBox(
            height: ConstraintsConst.kDefaultSecondaryHeight,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              runSpacing: ConstraintsConst.kPrimarySpaing,
              spacing: ConstraintsConst.kPrimarySpaing,
              children: [
                for (int i = 0; i < projects.length; i++)
                  ProjectCard(project: projects[i]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
