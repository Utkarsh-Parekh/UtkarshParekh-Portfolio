import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/constants/string_constant.dart';

class DesktopNav extends StatelessWidget {
  DesktopNav({
    super.key,
    required this.onNavItemDesktopTap,
  });

  final Function(int) onNavItemDesktopTap;

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(width: ConstraintsConst.kDefaultPrimaryHeight),
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: ConstraintsConst.kdefaultMargin,
              vertical: ConstraintsConst.kdefaultMargin),
          child: Text(StringConstant.kProfileName,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(foreground: Paint()..shader = linearGradient),
              )),
        ),
        const Spacer(),
        for (int i = 0; i < navTitles.length; i++)
          Padding(
            padding:
                const EdgeInsets.only(right: ConstraintsConst.kdefaultPadding),
            child: InkWell(
              onTap: () {
                onNavItemDesktopTap(i);
              },
              child: Text(navTitles[i],
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.black),
                  )),
            ),
          ),
        const SizedBox(
          width: ConstraintsConst.kdefaultMargin,
        )
      ],
    );
  }
}
