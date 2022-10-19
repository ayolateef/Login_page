import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/core/constants/app_asset.dart';
import 'package:login_page/core/constants/textstyle.dart';
import 'package:login_page/features/widgets/button.dart';

import 'email_login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //textfield controller
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final phoneNumber = '+2347032502259';
  Future signIn() async {
    await FirebaseAuth.instance.signInWithPhoneNumber(

        phoneNumber
    );
  }
  @override
  void dispose(){
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 25.w),
                  child: Text(
                    'Welcome',
                    style: CustomTextStyle.kTopTextStyle,
                  )),
              Image.asset(AppAsset.welcomeScreenImage),
              Container(
                margin:
                    EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 25.w),
                child:  TextFieldWidget(
                  controller: _phoneController,
                  textInputType: TextInputType.phone,
                  labelText: 'Phone',
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric( horizontal: 25.w),
                child:  TextFieldWidget(
                  controller: _passwordController,
                  labelText: 'Password',
                  obsureText: true,
                  textInputType: TextInputType.visiblePassword,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 50.0.sp,
                ),
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password ?',
                        style: CustomTextStyle.kSmallPurpleTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 25.w),
                  child: CustomButton(
                    onTap: signIn
                  )),
              
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                'Or',
                style: CustomTextStyle.kDarkTextStyle,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmailPage())
                  );
                },
                child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 25.w),
                    child: const CustomButton2(
                      image: AppAsset.mailImage,
                      text: 'Login with email',
                    )),
              ),
              SizedBox(
                height: 100.0.h,
              ),
              const BottomBigButton(text: 'Create an Account')
            ],
          ),
        ),
      ),
    );
  }
}
