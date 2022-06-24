import 'package:CaptainSayedApp/app_icon_icons.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    AppIcon.back,
                    color: Colors.black,
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
                //Spacer(),
                // Text(
                //   "View All",
                  
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     color: Colors.black,
                //     fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                //   ),
                // ),
              ],
            );
  }
}