import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight() {
    if (Get.context == null) {
      print("⚠️ Get.context đang null! Trả về giá trị mặc định.");
      return 800; // Giá trị mặc định tránh lỗi
    }
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth() {
    if (Get.context == null) {
      print("⚠️ Get.context đang null! Trả về giá trị mặc định.");
      return 400; // Giá trị mặc định tránh lỗi
    }
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getHeight(double pixel) {
    double x = getScreenHeight() / pixel;
    return getScreenHeight() / x;
  }

  static double getWidth(double pixel) {
    double x = getScreenWidth() / pixel;
    return getScreenWidth() / x;
  }
}
