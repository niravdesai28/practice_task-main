import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalAccount extends StatelessWidget {
  final String? imgpath;
  const GlobalAccount({super.key, this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 52.h,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black26),
        image:
            new DecorationImage(image: new AssetImage(imgpath ?? ""), scale: 3),
      ),
    );
  }
}
