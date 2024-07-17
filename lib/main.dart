import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/view/navigationscreen.dart';

import 'controller/theme_controller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController =  Get.put(ThemeController());
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return   GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeController.isDarkMode.value?ThemeData.dark():ThemeData.light(),
          // home: Themescreen(),

          initialRoute: '/',
            getPages: [
              GetPage(
                name: '/',
                page: () => Navigationscreen(),
              ),
              GetPage(
                  name: '/second',
                  page: () => Secondscreen(),),
            ],
        );
      }

    );
  }
}
