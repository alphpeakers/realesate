import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/home_model.dart';
import '../../util/style.dart';

class LegalServices extends StatelessWidget {
  const LegalServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 130.h,
          color: const Color(0xFFECF4FF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              content1.length,
              (index) {
                final item = content1[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(item.image.toString()),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        item.title.toString(),
                        textAlign: TextAlign.center,
                        style: regularFont.copyWith(fontSize: 10.sp),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 135,
          child: Container(
            width: 50.w,
            height: 10.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: Color(0xFFFFD687)),
            child: Center(
              child: Text(
                'Flat 25% off',
                style: regularFont.copyWith(fontSize: 5.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
