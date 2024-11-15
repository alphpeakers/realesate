import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realestate/util/style.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectPose = 0;
  late CircularBottomNavigationController _navigationController;
  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectPose);
  }

  @override
  void dispose() {
    _navigationController.dispose();
    super.dispose();
  }

  List<TabItem> tabItems = [
    TabItem(Icons.home_filled, "Home", const Color(0xFF2A2F5F),
        labelStyle: regularFont.copyWith(fontSize: 13.sp, color: Colors.white)),
    TabItem(Icons.favorite_outline, "Saved", const Color(0xFF2A2F5F),
        labelStyle: regularFont.copyWith(fontSize: 13.sp, color: Colors.white)),
    TabItem(Icons.send_rounded, "Enquiry", const Color(0xFF2A2F5F),
        labelStyle: regularFont.copyWith(fontSize: 13.sp, color: Colors.white)),
    TabItem(Icons.person, "Profile", const Color(0xFF2A2F5F),
        labelStyle: regularFont.copyWith(fontSize: 13.sp, color: Colors.white)),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: 40,
          child: Container(
            width: 500.w,
            height: 90.h,
            color: const Color(0xFFE6E9FF),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40.w,
                  ),
                  Image.asset('asset/icons/image 1.png'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('See Reviews & Ratings', style: mediumFont),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                      Text(
                        'Localities & societies reviewed by residents',
                        style: regularFont.copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  const Icon(Icons.close)
                ],
              ),
            ),
          ),
        ),
        CircularBottomNavigation(
          normalIconColor: Colors.white,
          tabItems,
          controller: _navigationController,
          selectedPos: selectPose,
          barHeight: 60,
          circleSize: 50,
          iconsSize: 25,
          barBackgroundColor: const Color(0xFF2A2F5F),
          animationDuration: const Duration(milliseconds: 300),
          selectedCallback: (selectedPos) {
            setState(() {
              selectPose = selectedPos!;
            });
          },
        ),
      ],
    );
  }
}
