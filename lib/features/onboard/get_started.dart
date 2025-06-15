import 'package:deshi_mart/core/appColors.dart';
import 'package:deshi_mart/core/constants.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.sp),
                Image.asset('assets/Group 33.png'),
                SizedBox(height: 10.sp),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'DESHI',
                        style: GoogleFonts.poppins(
                          color: AppColors.mainColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' MART',
                        style: GoogleFonts.poppins(
                          color: Color(0xFFF6921E),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  'Desh ka market',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20.sp),

                Expanded(
                  child: ListView.builder(
                    itemCount:
                        AppConstants.deshi_list.length * 2 -
                        1 +
                        1, // Items + separators + final separator
                    itemBuilder: (context, index) {
                      if (index.isEven) {
                        // Content item
                        int itemIndex = index ~/ 2;
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.sp),
                          child: Row(
                            children: [
                              Image.asset(
                                AppConstants.deshi_list[itemIndex]['image']!,
                                fit: BoxFit.fitHeight,
                                width: 23.sp,
                                height: 20.sp,
                              ),
                              SizedBox(width: 20.sp),
                              Text(
                                AppConstants.deshi_list[itemIndex]['String']!,
                                style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        // Separator item (including one after the last item)
                        return Container(
                          decoration: DottedDecoration(shape: Shape.line),
                          margin: EdgeInsets.symmetric(vertical: 5.sp),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20.sp).copyWith(bottom: 25.sp),
              height: 30.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.sp),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome to our store',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    'Get your grocery in as fast as\n one hour.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/sign-in');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.w, 30.sp),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                    ),
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
