import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/utils/projects/project_info.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectInfo? project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        try {
          Uri github = Uri(scheme: 'https', path: widget.project!.githubLink);
          await launchUrl(github, mode: LaunchMode.externalApplication);
        } catch (e) {
          debugPrint(e.toString());
        }
      },
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: 300,
            height: 370,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(ConstraintsConst.kdefaultRadius),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                Image.asset(widget.project!.image,
                    height: 200, fit: BoxFit.cover)
              ],
            ),
          ),

          // Project Info
          Positioned(
            bottom: 3,
            left: 0,
            right: 0,
            child: Container(
              width: 280,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(ConstraintsConst.kdefaultRadius),
                  color: Colors.purpleAccent.shade100.withOpacity(0.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.all(ConstraintsConst.kpaddingdefault),
                    child: Text(
                      widget.project!.title,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.all(ConstraintsConst.kpaddingdefault),
                    child: Text(
                      widget.project!.subtitle,
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Tech Stacks
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(ConstraintsConst.kpadding),
              width: 280,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.purpleAccent.shade100.withOpacity(0.7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < widget.project!.techStack.length; i++)
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        widget.project!.techStack[i],
                        style: GoogleFonts.poppins(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                  // InkWell(
                  //     onTap: () async {
                  //       try {
                  //         Uri github = Uri(
                  //             scheme: 'https', path: widget.project!.githubLink);
                  //         await launchUrl(github,
                  //             mode: LaunchMode.externalApplication);
                  //       } catch (e) {
                  //         debugPrint(e.toString());
                  //       }
                  //     },
                  //     child: const FaIcon(
                  //       FontAwesomeIcons.github,
                  //       size: 30,
                  //     ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
