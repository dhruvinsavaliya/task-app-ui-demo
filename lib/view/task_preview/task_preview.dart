import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_demo/config/app_colors.dart';
import 'package:task_app_demo/config/app_string.dart';
import 'package:task_app_demo/config/image_path.dart';
import 'package:task_app_demo/config/text_style.dart';
import 'package:task_app_demo/view/add_new_task/add_new_task.dart';

class TaskPreviewScreen extends StatefulWidget {
  const TaskPreviewScreen({Key? key}) : super(key: key);

  @override
  State<TaskPreviewScreen> createState() => _TaskPreviewScreenState();
}

class _TaskPreviewScreenState extends State<TaskPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Image.asset(ImagePath.arrowBack,
                    height: Get.width * 0.06,
                    width: Get.width * 0.06,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tasks Preview",
                      style: AppTextStyle.regular33
                          .copyWith(fontSize: 30,color: AppColors.primaryColor1),
                    ),
                    InkWell(
                        onTap: (){},
                        child: Image.asset(ImagePath.delete,height: Get.height* 0.07,width: Get.height* 0.07,))
                  ],
                ),
                const SizedBox(height: 32),
                title(title: "Task"),
                details(title: "Start work out"),
                const SizedBox(height: 24),
               Divider(color: AppColors.greyBorderColor,thickness: 1,),
                const SizedBox(height: 24),
                title(title: "Type"),
                details(title: "Personal project"),
                const SizedBox(height: 24),
                Divider(color: AppColors.greyBorderColor,thickness: 1,),
                const SizedBox(height: 24),
                title(title: "Priority"),
                details(title: "Nice to have"),
                const SizedBox(height: 24),
                Divider(color: AppColors.greyBorderColor,thickness: 1,),
                const SizedBox(height: 24),
                title(title: "Timeframe"),
                details(title: "Week"),
                const SizedBox(height: 24),
                Divider(color: AppColors.greyBorderColor,thickness: 1,),
                const SizedBox(height: 24),
                title(title: "Description"),
                details(title: AppString.loremIpsum),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Text title({String? title}) {
    return Text(
      title!,
      style: AppTextStyle.semiBold18.copyWith(fontSize: 20,color: AppColors.greyScale4),
    );
  }
  Text details({String? title}) {
    return Text(
      title!,
      style: AppTextStyle.semiBold18.copyWith(fontSize: 22,color: AppColors.greyScale2),
    );
  }
}
