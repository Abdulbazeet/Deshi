import 'package:deshi_mart/core/appColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actionsPadding: EdgeInsets.all(0),
              title: Row(
                children: [
                  Image.asset('assets/Group.png', width: 25.sp, height: 25.sp),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5.sp),
                        Text(
                          'Ikeja, Lagos',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              pinned: true,
              bottom: PreferredSize(
                preferredSize: Size(100.w, 34.sp),

                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  height: 30.sp,

                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search store',
                            hintStyle: GoogleFonts.poppins(fontSize: 14.sp),
                          ),
                        ),
                      ),

                      Icon(Icons.search, color: AppColors.mainColor),
                    ],
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 20.sp),
                  Container(height: 30.sp, width: 100.w, color: Colors.grey),
                ],
              ),
            ),
          ],

          // SizedBox(height: 25.sp),
        ),
      ),
    );
  }
}
