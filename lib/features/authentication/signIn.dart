import 'package:deshi_mart/core/appColors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );
  bool? correct;
  bool obscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 30.sp),
        child: ListView(
          children: [
            Center(child: Image.asset('assets/Group.png')),
            SizedBox(height: 40.sp),
            Text(
              'Log in',
              style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.sp),
            Text(
              'Enter your email and password',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 20.sp),
            Text(
              'Email',
              style: GoogleFonts.poppins(
                color: Colors.black54,
                fontSize: 15.sp,
              ),
            ),
            TextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                suffixIcon:
                    correct != null
                        ? correct == true
                            ? Icon(Icons.check, color: AppColors.mainColor)
                            : Icon(Icons.close, color: Colors.red)
                        : SizedBox.shrink(),
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  if (value.contains(emailRegex)) {
                    setState(() {
                      correct = true;
                    });
                  } else {
                    setState(() {
                      correct = false;
                    });
                  }
                }
              },
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.sp),
            Text(
              'Password',
              style: GoogleFonts.poppins(
                color: Colors.black54,
                fontSize: 15.sp,
              ),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                suffixIcon:
                    obscured == true
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
              ),
              obscureText: obscured,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.sp),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot password?',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp),
            ElevatedButton(
              onPressed: () {
                context.go('/homescreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                fixedSize: Size(100.w, 30.sp),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.sp),
                ),
              ),
              child: Text(
                'Sign up',
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.sp),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",

                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign up. ',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            //   print('yes');
                            context.go('/sign-up');
                          },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
