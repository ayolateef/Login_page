import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/core/constants/app_asset.dart';
import 'package:login_page/core/constants/textstyle.dart';
import 'package:login_page/features/auth/pages/phone_login.dart';
import 'package:login_page/features/widgets/button.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  //textfield controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _emailController.text.trim()
    );
  }
  @override
  void dispose(){
    _emailController.dispose();
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
                child: Text('Email Login', style: CustomTextStyle.kTopTextStyle2,
                )
                ),

              SvgPicture.asset(AppAsset.bigMailImage),

              Container(
                margin:
                    EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 25.w),
                child: TextFieldWidget(
                  controller: _emailController,
                  textInputType: TextInputType.emailAddress,
                  labelText:'Email' ,

                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric( horizontal: 25.w),
                child: TextFieldWidget(
                  controller: _passwordController,
                  labelText:'Password',
                  obsureText: true,
                  textInputType: TextInputType.visiblePassword,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(right:50.0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password ?',style: CustomTextStyle.kSmallPurpleTextStyle,)
                  ],
                ),
              ),
              SizedBox(height: 30.0.h,),
              Container(
                margin:
                      EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 45.w),

                child: CustomButton(
                  onTap: signIn,
                )),

              SizedBox(height: 20.0.h,),

              Text('Or', style: CustomTextStyle.kDarkTextStyle,),

              SizedBox(height: 20.0.h,),

              InkWell(
                onTap: ()  =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                        WelcomePage()
                    ),
                    ),
                child: Container(
                  margin:
                        EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 25.w),
                  child: const CustomButton2(
                    image: AppAsset.mailImage,
                  text: 'Login with phone number',
                  )
                  ),
              ),

              SizedBox(height: 90.0.h,),
              const BottomBigButton(text: 'Create an Account')



            ],
          ),
        ),
      ),
    );
  }
}
