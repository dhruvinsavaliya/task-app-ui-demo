import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_demo/config/app_colors.dart';
import 'package:task_app_demo/config/app_string.dart';
import 'package:task_app_demo/config/image_path.dart';
import 'package:task_app_demo/config/text_style.dart';
import 'package:task_app_demo/view/add_new_task/add_new_task.dart';
import 'package:task_app_demo/view/task_preview/task_preview.dart';

class AllTasksScreen extends StatefulWidget {
  const AllTasksScreen({Key? key}) : super(key: key);

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tasks",
                      style: AppTextStyle.regular33
                          .copyWith(fontSize: 30,color: AppColors.primaryColor1),
                    ),
                    Text(
                      "6 Tasks",
                      style: AppTextStyle.semiBold18,
                    ),
                  ],
                ),
                InkWell(
                    onTap: () => Get.to(()=>const AddNewTaskScreen()),
                    child: Image.asset(ImagePath.addCircle,height: Get.height* 0.07,width: Get.height* 0.07,))
              ],
            ),
            SizedBox(
              height:Get.width* 0.1,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => homeGrid()),
            )
            
          ],
        ),
      )),
    );
  }
  homeGrid() {
    return GestureDetector(
      onTap: () => Get.to(()=>const TaskPreviewScreen()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 24),
        decoration:  BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: const Offset(0, 4),
              color: AppColors.blackColor.withOpacity(0.05)
            )
          ],

            borderRadius: const BorderRadius.all(Radius.circular(16)),
            gradient: const LinearGradient(colors: [
              Colors.white,
              AppColors.primaryColor3,
            ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )
        ),
        child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 2),
                        child: Text(
                          AppString.loremIpsum,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.semiBold24.copyWith(fontSize: 20),
                        ),
                      ),
                      Text(
                        "Today",
                        style: AppTextStyle.light18.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                Image.asset(
                  ImagePath.arrowForward,
                  height: Get.width * 0.085,
                  width: Get.width * 0.085,
                )
              ],
            )),
      ),
    );
  }
}
