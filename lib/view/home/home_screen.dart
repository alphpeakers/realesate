import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realestate/util/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:realestate/view/home/dashboard.dart';
import 'package:realestate/view/widget/asistance.dart';
import '../widget/agents.dart';
import '../widget/legal.dart';
import '../widget/payrent.dart';
import '../widget/recent_search.dart';
import '../widget/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = ['Buy', 'Rent'];
  String isSelect = 'Buy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Dashboard(),
      backgroundColor: const Color(0xFF2A2F5F),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 600,
              color: Colors.grey,
              child: Image.asset(
                'asset/images/Picsart_24-11-15_14-22-42-048.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find Your best\nproperity',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        width: 25.w,
                        height: 25.h,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        // child: Image.asset(
                        //   'asset/icons/style=linear.png',
                        //   fit: BoxFit.contain,
                        // ),
                      )
                    ],
                  ),
                ),
                Text(
                  'Search properties for sale and to rent in the UK',
                  style: regularFont.copyWith(
                      fontSize: 13.sp, color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  width: 355.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton(
                          style: regularFont.copyWith(fontSize: 16.sp),
                          value: isSelect,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items
                              .map<DropdownMenuItem<String>>((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              isSelect = newValue!;
                            });
                          },
                        ),
                      ),
                      const VerticalDivider(),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: const Icon(
                                CupertinoIcons.search, // Cupertino search icon
                              ),
                              hintText: 'Search e.g.Oxford or NW3',
                              hintStyle: regularFont.copyWith(fontSize: 14.sp),
                              contentPadding: EdgeInsets.only(top: 3).r),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //Base
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(45.r))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 30.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.history,
                                        size: 18,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        'RECENT SEARCHES',
                                        style: mediumFont,
                                      ),
                                      const Spacer(),
                                      Text(
                                        'Clear',
                                        style: mediumFont,
                                      ),
                                    ],
                                  ),
                                  const RecentSearch(),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'SERVICES FOR YOU',
                                    style: mediumFont,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                      width: 400.w,
                                      height: 240.h,
                                      // padding: EdgeInsets.only(left: 30, right: 30),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                                offset: Offset(2, 3),
                                                color: Color(0xFFDAE1EB),
                                                spreadRadius: 0,
                                                blurRadius: 6)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: const Services()),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  //agents
                                  Text(
                                    'AGENTS',
                                    style: mediumFont,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Agents(),
                                ],
                              ),
                            ),
                            //legal services
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'LEGAL SERVICES',
                                style: mediumFont,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const LegalServices(),
                            SizedBox(
                              height: 20.h,
                            ),
                            //Pay Rent Bill
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Column(
                                children: [
                                  const PayRent(),
                                  SizedBox(height: 50.h),
                                  //Assistance
                                  const Asistance(),
                                  SizedBox(
                                    height: 50.h,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
