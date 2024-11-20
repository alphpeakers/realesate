import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realestate/model/home_model.dart';
import 'package:realestate/util/style.dart';

class Services extends StatefulWidget {
  const Services({
    super.key,
  });

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  List<bool> isSelect = List.generate(content.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: [
        PageView.builder(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  //mainAxisExtent: 90,
                  crossAxisSpacing: 20),
              itemCount: content.length,
              itemBuilder: (context, index) {
                final item = content[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      isSelect[index] = !isSelect[index];
                    });
                  },
                  child: Container(
                    width: 55.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 1,
                            color: isSelect[index]
                                ? Color(0xFF2945A5)
                                : Color(0xFFD7D7D7)),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2, 3),
                              color: Color(0xFFDAE1EB),
                              spreadRadius: 0,
                              blurRadius: 6)
                        ],
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(item.image.toString()),
                        Text(
                          textAlign: TextAlign.center,
                          item.title.toString(),
                          style: regularFont.copyWith(fontSize: 10.sp),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        Positioned(
          right: 5,
          child: InkWell(
            onTap: () {
              _pageController.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.bounceOut);
            },
            child: Container(
              width: 28.w,
              height: 28.h,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(3, 4),
                    color: Color(0xFFC4C3C3),
                    spreadRadius: 0,
                    blurRadius: 6)
              ], color: Color(0xFF364268), shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ),
        currentIndex == 0
            ? SizedBox()
            : Positioned(
                right: 360,
                child: InkWell(
                  onTap: () {
                    _pageController.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.bounceOut);
                  },
                  child: Container(
                    width: 28.w,
                    height: 28.h,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 4),
                          color: Color(0xFFC4C3C3),
                          spreadRadius: 0,
                          blurRadius: 6)
                    ], color: Color(0xFF364268), shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
