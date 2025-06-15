import 'package:deshi_mart/core/appColors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              'Sign up',
              style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.sp),
            Text(
              'Enter your credentials to continue',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20.sp),
            Text(
              'Username',
              style: GoogleFonts.poppins(
                color: Colors.black54,
                fontSize: 15.sp,
              ),
            ),
            TextField(
              controller: username,
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
              ),
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By continuing, you agree to our ',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms of Service',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.sp),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'and ',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black54,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy. ',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.sp),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                fixedSize: Size(100.w, 30.sp),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.sp),
                ),
              ),
              child: Text(
                'Sign up',
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
                    text: 'Already have an account? ',

                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign in. ',
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            context.go('/sign-in');
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
