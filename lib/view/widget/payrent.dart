import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/style.dart';

class PayRent extends StatelessWidget {
  const PayRent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 150.h,
          decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Color(0xFF9C9898)),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(2, 5),
                    color: Color(0xFFE2E1E1),
                    spreadRadius: 0,
                    blurRadius: 6)
              ],
              borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pay Your Rent & Bills',
                        style: mediumFont.copyWith(fontSize: 20.sp)),
                    Text(
                      '& Earn up to 30k',
                      style: regularFont.copyWith(fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                        width: 100.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: const Color(0xFF364268),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Center(
                          child: Text(
                            'Pay Now',
                            style: regularFont.copyWith(
                                fontSize: 15.sp, color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Safe secure Quick',
                      style: regularFont.copyWith(fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 9,
          child: Container(
            // color: Colors.grey,
            width: 150.w,
            height: 150.h,
            child: Image.asset(
              fit: BoxFit.contain,
              'asset/images/Mask group.png',
              // color: Colors.grey,
              // height: 100.h,
              // width: 520.w,
            ),
          ),
        ),
      ],
    );
  }
}
