import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Agents extends StatelessWidget {
  const Agents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topRight,
      children: [
        Container(
          width: 400.w,
          height: 100.h,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(2, 3),
                    color: Color(0xFFDAE1EB),
                    spreadRadius: 0,
                    blurRadius: 6)
              ],
              borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            children: [
              SizedBox(width: 10.w),
              Icon(
                Icons.sell_outlined,
                size: 30,
              ),
              SizedBox(width: 10.w),
              const Text('Request property valuation'),
              SizedBox(width: 5.w),
              const Icon(Icons.arrow_forward_ios),
              SizedBox(
                width: 45.w,
              ),
            ],
          ),
        ),
        Positioned(
          // top: 35,
          right: 16,
          bottom: 4,
          child: SizedBox(
            width: 110.w,
            height: 110.h,
            child: Image.asset(
              'asset/images/Screenshot__223_-transformed-removebg-preview 1.png',
              fit: BoxFit.contain,

              // scale: 2.5,
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
