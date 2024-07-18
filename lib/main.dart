import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/homescreen.dart';

import 'controller/theme_controller.dart';


void main() {
  final ThemeController themeController = Get.put(ThemeController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
          home: MainScreen(),
        );
      },
    );
  }
}