import 'package:flutter/material.dart';
import 'package:portfolio/constants/string_constant.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key,required this.radius});

  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius, // Image radius
      backgroundImage:
      const AssetImage(StringConstant.profileImage),
    );
  }
}
