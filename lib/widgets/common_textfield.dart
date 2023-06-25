
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app_demo/config/app_colors.dart';
import 'package:task_app_demo/config/text_style.dart';

commonTextField(
    {TextEditingController? controller,
    String? title,
    bool? suffixIcon,
    bool obscureText = false,
    Function()? suffixOnPressed,
    void Function(String)? onFieldSubmitted,
    String? hintText,
    double? topPadding,
    double? bottomPadding}) {
  return Container(
    margin: EdgeInsets.only(top: topPadding ?? 30, bottom: bottomPadding ?? 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      /*  Text(
          title!,
          style: AppTextStyle.regular500.copyWith(
            fontSize: 18,
          ),
        ),*/
        Text.rich(
            TextSpan(
                text: title!,
                style: AppTextStyle.semiBold18.copyWith(
                  fontSize: 18,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: ' *',
                    style: AppTextStyle.semiBold18.copyWith(
                      fontSize: 18,color: AppColors.redColor
                    ),
                  )
                ]
            )
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          onFieldSubmitted: onFieldSubmitted,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon == true
                  ?IconButton(onPressed: suffixOnPressed, icon: Icon(obscureText == true?Icons.visibility_off:Icons.visibility,color: AppColors.blackColor,))
                  :const SizedBox(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.greyBorderColor,
                ),
              ),
              hintStyle: AppTextStyle.semiBold18.copyWith(
                  fontSize: 14,
                  color: AppColors.hintTextColor.withOpacity(0.3)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.greyBorderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.greyBorderColor,
                ),
              ),
              fillColor: AppColors.whiteColor2,
              filled: true),
        )
      ],
    ),
  );
}



///


class CommonTextField extends StatelessWidget {
  final String? hintText;
  final String? validationMessage;
  Color? fillColor;
  final bool needValidation;
  final bool isEmailValidation;
  final double? height;
  final double? width;
  final double? topContentPadding;
  final double? bottomContentPadding;
  final double? rightContentPadding;
  final double? leftContentPadding;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  BorderRadiusGeometry? borderRadius;
  final TextEditingController? controller;
  final bool isPhoneValidation;
  final bool isPasswordValidation;
  final TextInputType? textInputType;
  final int? maxLine;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final bool isTransparentColorBorder;
  final bool isSmallTitle;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChange;
  final Function(String)? onFieldSubmitted;
  final bool obscureText;
  final bool shadow;
  final Color? cursorColor;
  final bool autofocus;
  final TextAlign? textAlign;

   CommonTextField({
    Key? key,
    this.needValidation = false,
    this.isEmailValidation = false,
    this.fillColor,
    this.hintText,
    this.validationMessage,
    this.height,
    this.width,
     this.autofocus = false,
     this.cursorColor,
     this.topContentPadding,
     this.bottomContentPadding,
     this.textAlign,
     this.rightContentPadding,
     this.leftContentPadding,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.borderRadius,
    this.controller,
    this.isPhoneValidation = false,
    this.textInputType,
    this.inputFormatters,
    this.maxLine,
     this.onFieldSubmitted,
    this.maxLength,
    this.isTransparentColorBorder = false,
    this.suffixIcon,
    this.isSmallTitle = false,
    this.prefixIcon,
    this.validator,
    this.isPasswordValidation = false,
    this.obscureText = false,
    this.shadow = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: topPadding ?? 0, bottom: bottomPadding ?? 0,left:leftPadding ?? 0,right: rightPadding ?? 0 ),
      decoration: BoxDecoration(borderRadius: borderRadius ?? null,
      boxShadow: shadow ?[
      BoxShadow(
          blurRadius: 20,
          offset: const Offset(0, 4),
          color: AppColors.blackColor.withOpacity(0.05)
      )
      ]:[]),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onFieldSubmitted: onFieldSubmitted,
        maxLines: maxLine,
        autofocus: autofocus,
        maxLength: maxLength,
        controller: controller,
        cursorColor: cursorColor,
        textAlign: textAlign ?? TextAlign.left,
        onChanged: onChange,
        obscureText: obscureText,
        inputFormatters: inputFormatters ?? [],
        keyboardType: textInputType ?? TextInputType.text,
        style: AppTextStyle.semiBold18.copyWith(fontSize: 15),
        decoration: InputDecoration(
          fillColor: fillColor ?? AppColors.whiteColor2,
          contentPadding:  EdgeInsets.only(top: topContentPadding ?? 16, bottom: bottomContentPadding ?? 16, right: rightContentPadding ??  20, left: leftContentPadding ?? 20),
          isDense: true,
          filled: true,
          counterText: "",
          hintText: hintText ?? "",
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintStyle: AppTextStyle.semiBold18.copyWith(color: AppColors.hintTextColor, fontSize: 15),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isTransparentColorBorder
                      ? AppColors.transparentColor
                      : AppColors.primaryColor1),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isTransparentColorBorder
                      ? AppColors.transparentColor
                      : AppColors.textColor),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isTransparentColorBorder
                      ? AppColors.transparentColor
                      : AppColors.primaryColor1),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: isTransparentColorBorder
                      ? AppColors.transparentColor
                      : AppColors.textColor),
              borderRadius: BorderRadius.circular(10)),
        ),
        // validator: needValidation
        //     ? validator ??
        //         (v) {
        //           return TextFieldValidation.validation(
        //               message: validationMessage ?? title,
        //               value: v,
        //               isPasswordValidator: isPasswordValidation,
        //               isPhone: isPhoneValidation,
        //
        //               isEmailValidator: isEmailValidation);
        //         }
        //     : null,
      ),
    );
  }
}