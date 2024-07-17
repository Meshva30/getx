import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/counter%20controller.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    final Countercontroller countercontroller = Get.put(Countercontroller());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'GetX Counter App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text(
              'Count: ${countercontroller.count}',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: countercontroller.increment,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
