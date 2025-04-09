import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constraints_constants.dart';
import 'package:portfolio/constants/string_constant.dart';
import 'package:portfolio/views/screens/responsive_design.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key,});



  // @override
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // GestureDetector(
        //   onTap: () async{
        //     var permission = await FlDownloader.requestPermission();
        //     if(permission == StoragePermissionStatus.granted){
        //       await FlDownloader.download("https://drive.google.com/drive/u/0/folders/1-Cu6VM2-QqPAnIOhrT7GowHvKY3kBRDe",fileName: "Utkarsh");
        //     }
        //   },
        //   child: Container(
        //     width: ResponsiveDesign.isMobile(context) ? 150 : 200,
        //     height: 50,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20),
        //         border: Border.all(color: Colors.black)),
        //     child: Center(
        //         child: Text(
        //           "Download CV",
        //           style: Theme.of(context).textTheme.bodyLarge,
        //         )),
        //   ),
        // ),
        // SizedBox(
        //   width: 10,
        // ),
        InkWell(
          onTap: (){

          },
          child: Container(
            width: ResponsiveDesign.isMobile(context) ? 150 : 200,
            height: ConstraintsConst.kSecondaryHeight,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius:
                  BorderRadius.circular(ConstraintsConst.kPrimaryRadius),
              border: Border.all(color: Colors.black),
            ),
            child: Center(
                child: Text(StringConstant.contactInfoText,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white))),
          ),
        )
      ],
    );
  }
}
