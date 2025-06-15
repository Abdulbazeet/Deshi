import 'package:deshi_mart/core/appColors.dart';
import 'package:deshi_mart/core/constants.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
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
                  child: ListView.separated(
                    itemBuilder:
                        (context, index) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.sp),
                          child: Row(
                            children: [
                              Image.asset(
                                AppConstants.deshi_list[index]['image']!,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(width: 20.sp),
                              Text(
                                AppConstants.deshi_list[index]['String']!,
                                style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                    separatorBuilder:
                        (context, index) => Container(
                          decoration: DottedDecoration(shape: Shape.line),
                        ),
                    itemCount: AppConstants.deshi_list.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
