import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_demo/config/app_colors.dart';
import 'package:task_app_demo/config/image_path.dart';
import 'package:task_app_demo/config/text_style.dart';
import 'package:task_app_demo/view/all_tasks_screen/all_tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                "Sample App",
                style: AppTextStyle.regular33
                    .copyWith(fontSize: 32,color: AppColors.primaryColor1),
              ),
              const SizedBox(height: 40),
              homeGrid()
            ],
          ),
        ),
      ),
    );
  }

  homeGrid() {
    return GestureDetector(
     onTap: () => Get.to(()=>const AllTasksScreen()),
      child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    // AppColors.whiteColor,
                    AppColors.primaryColor3,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  // stops: [1,3,6],
                  )
                ),
                child: Center(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage(ImagePath.laptop),
                      height: Get.width * 0.085,
                      width: Get.width * 0.085,
                    ),
                    const SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tasks",
                          style: AppTextStyle.semiBold24.copyWith(fontSize: 22),
                        ),
                        Text(
                          "6 Tasks",
                          style: AppTextStyle.light18.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    const Spacer(),
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
