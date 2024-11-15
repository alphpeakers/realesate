import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realestate/util/style.dart';

class Asistance extends StatefulWidget {
  const Asistance({super.key});

  @override
  State<Asistance> createState() => _AsistanceState();
}

class _AsistanceState extends State<Asistance> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 400.w,
          height: 80.h,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 0),
                    color: Color(0xFFEBEEF3),
                    spreadRadius: 0,
                    blurRadius: 6)
              ],
              borderRadius: BorderRadius.circular(15.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Need Asistance?',
                      style: regularFont.copyWith(
                          color: Colors.black, fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'We are a just call away! (+44 7653254678)',
                      style: regularFont.copyWith(fontSize: 9.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 35,
          right: 125,
          child: Image.asset(
            'asset/icons/telephone-call (2) 1.jpg',
            scale: 2.5,
          ),
        ),
        Positioned(
          bottom: 1,
          right: 25,
          child: SizedBox(
            width: 110.w,
            height: 110.h,
            child: Image.asset(
              fit: BoxFit.contain,
              'asset/images/Mask group (2).png',
              // color: Colors.grey,
              // height: 100.h,
              // width: 520.w,
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 5,
          child: Image.asset(
            fit: BoxFit.contain,
            'asset/icons/Group 1517.png',
            scale: 0.8,
          ),
        ),
      ],
    );
  }
}
