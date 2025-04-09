import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constraints_constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,  this.textController,this.hintText, this.maxLines=1});

  final TextEditingController? textController;
  final String? hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: textController,
        decoration: InputDecoration(
      fillColor: Colors.grey.shade100,
      filled: true,
      hintText: hintText,

      hintStyle: GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Colors.black
      )),
      contentPadding: const EdgeInsets.all(18),
      focusedBorder: getInputDecoration,
      enabledBorder: getInputDecoration,
      border: getInputDecoration
    ));
  }

  OutlineInputBorder get getInputDecoration{
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(ConstraintsConst.kdefaultRadius),
        borderSide: const BorderSide(color: Colors.purpleAccent,width: 1));
  }
}
