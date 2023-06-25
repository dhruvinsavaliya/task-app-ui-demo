

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_demo/config/app_colors.dart';
import 'package:task_app_demo/config/text_style.dart';

///design 1
CommonButtons({String? btnName,double? height,Color? color,void Function()? onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      // height: height ?? Get.height,
      width: Get.width,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: color?? AppColors.primaryColor1,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child:Center(child: Text(btnName!,style: AppTextStyle.regular18.copyWith(color: AppColors.whiteColor2),)),
    ),
  );
}