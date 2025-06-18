// ignore_for_file: camel_case_types

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
      backgroundColor: Colors.white,
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
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: Colors.white,
              collapsedHeight: kToolbarHeight,
              toolbarHeight: kToolbarHeight,
              //  collapsedHeight: 50.sp,

              // bottom: PreferredSize(
              //   preferredSize: Size.fromHeight(30.sp),

              //   child:
              //

              // ),
            ),
            SliverPersistentHeader(
              delegate: _SearchBarDelegate(),
              pinned: true,
            ),

            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 20.sp),
                  Stack(
                    children: [
                      Container(
                        height: 50.sp,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          gradient: LinearGradient(
                            tileMode: TileMode.repeated,
                            colors: [
                              Colors.grey,
                              Colors.grey,

                              // Color.fromARGB(128, 3, 3, 3),
                              // Color.fromARGB(154, 83, 177, 117).withValues(alpha: .3),
                              // Color(0xFFF2F3F2),
                              // Color(0xFFFFFFFF),
                              // Color(0xFFF2F3F2),
                              // Color.fromARGB(128, 3, 3, 3).withValues(alpha: .4),
                              // Color.fromARGB(154, 83, 177, 117),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Container(
                        height: 50.sp,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          image: DecorationImage(
                            image: AssetImage('assets/Mask Group.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Image.asset('assets/2771 1.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exclusive offer',
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,

                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all ',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),
                  SizedBox(
                    height: 60.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,

                      itemBuilder:
                          (context, index) => Padding(
                            padding: EdgeInsets.only(right: 20.sp),
                            child: Container(
                              padding: EdgeInsets.all(15.sp),
                              width: 50.sp,
                              height: 70.sp,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20.sp),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
                                  ),
                                  SizedBox(height: 15.sp),
                                  Text(
                                    'Organic Banana',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20.sp),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$5,000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //   Spacer(),
                                      IconButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.mainColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              15.sp,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        icon: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                    ),
                  ),

                  //**
                  //best selling
                  // */
                  SizedBox(height: 20.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Selling ',
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,

                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all ',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),
                  SizedBox(
                    height: 60.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,

                      itemBuilder:
                          (context, index) => Padding(
                            padding: EdgeInsets.only(right: 20.sp),
                            child: Container(
                              padding: EdgeInsets.all(15.sp),
                              width: 50.sp,
                              height: 70.sp,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20.sp),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
                                  ),
                                  SizedBox(height: 15.sp),
                                  Text(
                                    'Organic Banana',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20.sp),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$5,000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //   Spacer(),
                                      IconButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.mainColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              15.sp,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        icon: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                    ),
                  ),
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

class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60;
  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: const [
            SizedBox(width: 12),
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 8),
            Text("Search Store", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_SearchBarDelegate oldDelegate) => false;
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  final String image, title, subtitle, price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 80),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle, style: const TextStyle(color: Colors.grey)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
