import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realestate/model/home_model.dart';
import 'package:realestate/util/style.dart';

class RecentSearch extends StatefulWidget {
  const RecentSearch({
    super.key,
  });

  @override
  State<RecentSearch> createState() => _RecentSearchState();
}

class _RecentSearchState extends State<RecentSearch> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      //physics: BouncingScrollPhysics(),
      child: Row(
          children: List.generate(
        content2.length,
        (index) {
          final items = content2[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200.w,
              height: 80.h,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    offset: Offset(2, 3),
                    color: Color(0xFFDAE1EB),
                    spreadRadius: 0,
                    blurRadius: 6)
              ], color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
              child: Row(
                children: [
                  Container(
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.r),
                          bottomLeft: Radius.circular(5.r)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.r),
                          bottomLeft: Radius.circular(5.r)),
                      child: Image.asset(
                        items.image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        items.title.toString(),
                        style: regularFont.copyWith(fontSize: 10.sp),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        items.description.toString(),
                        style: regularFont.copyWith(
                            fontSize: 12.sp, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
