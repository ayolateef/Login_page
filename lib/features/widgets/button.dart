import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/core/constants/colors.dart';
import 'package:login_page/core/constants/textstyle.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  // final Color? colour;
  final VoidCallback? onTap;

  const CustomButton(
      {super.key,
      this.text,
      //this.colour,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.0.h,
        width: 323.0.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0.r),
            color: ColorUtils.primaryColor),
        child: Center(
            child: Text(
          'Login',
          style: CustomTextStyle.kButtonTextStyle,
        )),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType? textInputType;
  final bool? obsureText;
  final TextEditingController controller;
   TextFieldWidget(
      {super.key,
      this.hintText,
      this.labelText,
      this.textInputType,
      this.obsureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    // final _controller = TextEditingController();
    return SizedBox(
      height: 70.0,
      // width: 323.0.w,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: obsureText ?? false,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
              hintStyle: CustomTextStyle.kTextfieldTextStyle,
              hintText: hintText),
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String? text;
  // final Color? colour;
  final VoidCallback? onTap;
  final String? image;

  const CustomButton2(
      {super.key,
      this.text,
      //this.colour,
      this.onTap, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 39.0.h,
        width: 323.0.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0.r),
            border: Border.all( color: ColorUtils.primaryColor)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(image!),
              const SizedBox(width: 8.0,),
               Text(
              text!,
              style: CustomTextStyle.kSmallDarkTextStyle,
            ),
            ],

          ),
        ),
      ),
    );
  }
}
class BottomBigButton extends StatelessWidget {
  final String? text;
  // final Color? colour;
  final VoidCallback? onTap;
  

  const BottomBigButton(
      {super.key,
      this.text,
      //this.colour,
      this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.0.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorUtils.primaryColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),

            ),
        child: Center(
          child: Text(
              text!,
              style: CustomTextStyle.kButtonTextStyle
            ),

          ),
      ),
    );
  }
}
