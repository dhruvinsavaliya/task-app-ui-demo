import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_demo/config/app_colors.dart';
import 'package:task_app_demo/config/image_path.dart';
import 'package:task_app_demo/config/text_style.dart';
import 'package:task_app_demo/widgets/common_buttons.dart';
import 'package:task_app_demo/widgets/common_dropdown/common_drop_down.dart';
import 'package:task_app_demo/widgets/common_textfield.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  List<String> taskType = ["Work", "Personal Project", "Self"];
  List<String> taskPriority = ["Needs done", "Nice to have"];
  String selectedType = "Work";
  String selectedPriority = "Needs done";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          child: Stack(
            // alignment: Alignment.topLeft,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          ImagePath.arrowBack,
                          height: Get.width * 0.06,
                          width: Get.width * 0.06,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "New Task",
                        style: AppTextStyle.regular33
                            .copyWith(fontSize: 30, color: AppColors.primaryColor1),
                      ),
                      const SizedBox(height: 32),
                      title(title: "Task"),
                      CommonTextField(fillColor: AppColors.whiteColor),
                      const SizedBox(height: 24),
                      title(title: "Timeframe"),
                      CommonTextField(fillColor: AppColors.whiteColor),
                      const SizedBox(height: 24),
                      title(title: "Type"),
                      CommonDropDown(fillColor: AppColors.whiteColor,
                        itemList: taskType,
                        validator: (v) {
                          if (v == null) {
                            return "Please Select Type";
                          }
                          return null;
                        },
                        onChange: (v) {
                          selectedType = v!;
                        },
                      ),
                      const SizedBox(height: 24),
                      title(title: "Priority"),
                      CommonDropDown(fillColor: AppColors.whiteColor,
                        itemList: taskPriority,
                        validator: (v) {
                          if (v == null) {
                            return "Please Select Priority";
                          }
                          return null;
                        },
                        onChange: (v) {
                          selectedType = v!;
                        },
                      ),
                      const SizedBox(height: 24),
                      title(title: "Timeframe"),
                      CommonTextField(
                        fillColor: AppColors.whiteColor
                      ),
                      const SizedBox(height: 24),
                      title(title: "Description"),
                      CommonTextField(
                        maxLine: 5,fillColor: AppColors.whiteColor
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 0,left: 0,
                  child:
              CommonButtons(
                onTap: () => Get.back(),
                btnName: "Submit",
              )
              )
            ],
          ),
        ),
      ),
    );
  }

  Text title({String? title}) {
    return Text(
      title!,
      style: AppTextStyle.semiBold18.copyWith(fontSize: 20),
    );
  }
}
