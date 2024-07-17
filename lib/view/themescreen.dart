import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/theme_controller.dart';
class Themescreen extends StatelessWidget {
  const Themescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Change',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:
           themeController.togglesTheme,
          child: Text('Theme Change'),
        ),
      ),
    );
  }
}
