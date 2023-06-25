import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../config/text_style.dart';

class CommonDropDown extends StatelessWidget {
  final String? title;
  final List<String>? itemList;
  final String? dropDownValue;
  final String? validationMessage;
  final String? hintText;
  final double? topPadding;
  final Color? fillColor;
  final bool isTransparentColor;
  final bool needValidation;
  final String? Function(String?)? validator;

  final void Function(String?)? onChange;

  const CommonDropDown(
      {Key? key,
      this.title,
      this.itemList,
      this.dropDownValue,
      this.onChange,
        this.validator,
      this.validationMessage,
      this.topPadding,
      this.hintText,
      this.fillColor,
      this.isTransparentColor = false,
      this.needValidation = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: topPadding ?? 0),
        if (title != null)
          Text(
            title!,
            style: AppTextStyle.semiBold24.copyWith(fontSize: 18),
          ),
        if (title != null) const SizedBox(height: 10),
        DropdownButtonFormField(
          style: AppTextStyle.semiBold24.copyWith(fontSize: 16),
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? AppColors.whiteColor2,
            hintText: hintText,
            hintStyle: AppTextStyle.semiBold24
                .copyWith(color: AppColors.blackColor, fontSize: 17),
            contentPadding:
                const EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 20),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isTransparentColor
                        ? AppColors.transparentColor
                        : AppColors.textColor),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isTransparentColor
                        ? AppColors.transparentColor
                        : AppColors.textColor),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isTransparentColor
                        ? AppColors.transparentColor
                        : AppColors.primaryColor1),
                borderRadius: BorderRadius.circular(10)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isTransparentColor
                        ? AppColors.transparentColor
                        : AppColors.textColor),
                borderRadius: BorderRadius.circular(10)),
          ),
          validator: needValidation == true
            ? (v) {
          if (v == null) {
            return "$validationMessage is required";
          }
          return null;
        }
            : null,
          isDense: true,
          onChanged: onChange,
          value: dropDownValue,
          items: itemList!.map((selectedType) {
            return DropdownMenuItem(
              value: selectedType,
              child: Text(
                selectedType,
                // style: AppTextStyle.regular400.copyWith(color: AppColors.blackColor, fontSize: 17),
              ),
            );
          }).toList(),
          isExpanded: true,
          icon:  const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          ),
        ),
      ],
    );
  }
}
