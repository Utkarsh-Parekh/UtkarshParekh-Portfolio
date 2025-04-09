import 'package:flutter/material.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';

class MobileNav extends StatelessWidget {
  MobileNav({super.key, required this.onPressedMenu});

  final VoidCallback? onPressedMenu;

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ConstraintsConst.kPrimaryMargin,
          vertical: ConstraintsConst.kdefaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(StringConstant.kProfileName,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  foreground: Paint()..shader = linearGradient)),
          IconButton(
            onPressed: onPressedMenu,
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
