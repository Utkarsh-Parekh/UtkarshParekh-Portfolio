import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:
          const EdgeInsets.symmetric(vertical: ConstraintsConst.kdefaultMargin),

      child: Text(
        StringConstant.footerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.black,
              ),
        ),
      ),
    );
  }
}
