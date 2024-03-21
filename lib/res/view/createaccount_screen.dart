import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_task/res/comman/globalaccount.dart';
import 'package:practice_task/res/comman/globalbutton.dart';
import 'package:practice_task/res/comman/globaltext.dart';
import 'package:practice_task/res/comman/globaltextfield.dart';
import 'package:practice_task/res/static/app_colors.dart';
import 'package:practice_task/res/view/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Icon(Icons.arrow_back),
              SizedBox(
                height: 60.h,
              ),
              GlobalText(
                text: "Create Your",
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
              ),
              GlobalText(
                text: "Account",
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 60.h,
              ),
              GlobalTextField(
                iconfirst: Icon(Icons.email),
                hinttext: "nidham78@gmail.com",
              ),
              SizedBox(
                height: 20.h,
              ),
              GlobalTextField(
                iconfirst: Icon(Icons.lock),
                hinttext: "***********",
                iconsecond: Icon(Icons.visibility_off),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    child: Checkbox(
                      activeColor: AppColor.blackcolor,
                      value: agree,
                      onChanged: (value) {
                        setState(() {
                          agree = value ?? false;
                        });
                      },
                    ),
                  ),
                  GlobalText(
                    text: "Remember Me",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GlobalButton(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1.h,
                    width: 111.w,
                    color: AppColor.blackcolor,
                  ),
                  GlobalText(
                    text: "Or Continue With",
                    fontSize: 12.sp,
                  ),
                  Container(
                    height: 1.h,
                    width: 111.w,
                    color: AppColor.blackcolor,
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GlobalAccount(
                    imgpath: "assets/images/facebook.png",
                  ),
                  GlobalAccount(
                    imgpath: "assets/images/google.png",
                  ),
                  GlobalAccount(
                    imgpath: "assets/images/apple1.png",
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlobalText(
                    text: "Already Have An Account",
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: GlobalText(
                        text: "Sign In",
                        fontWeight: FontWeight.w700,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
