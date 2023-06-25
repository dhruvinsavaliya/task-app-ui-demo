import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*showSnackbar({required String title, required String message}) {
  // return Get.snackbar(title, message,
  //     snackPosition: SnackPosition.BOTTOM ,
  //     backgroundColor: Colors.white, duration: const Duration(seconds: 1));
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 15.0);
}*/
showSnackbar(
    {required BuildContext context,
    required String title,
    required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         FittedBox(fit: BoxFit.scaleDown,child:  Text(title),),
         const SizedBox(
            height: 2,
          ),
          FittedBox(fit: BoxFit.scaleDown,child:  Text(message),),
        ],
      ),
    ),
  );


  // Fluttertoast.showToast(
  //   msg: message,
  //   toastLength: Toast.LENGTH_SHORT,
  //   gravity: ToastGravity.BOTTOM,
  //   timeInSecForIosWeb: 1,
  //   backgroundColor: Colors.grey,
  //   textColor: Colors.white,
  //   fontSize: 15.0);
}
