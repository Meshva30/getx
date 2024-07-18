import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter controller.dart';
import '../controller/theme_controller.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(Navigationscreen());
              },
              child: Text('Navigation Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(Counterpage());
              },
              child: Text('Counter Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(Themescreen());
              },
              child: Text('Theme Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class Navigationscreen extends StatelessWidget {
  const Navigationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.to(Secondscreen(), transition: Transition.zoom);
          },
          child: SizedBox(
            height: 500,
            width: 500,
            child: Image.network(
              'https://media.licdn.com/dms/image/C4D12AQGN-i1zeCivGA/article-inline_image-shrink_1500_2232/0/1614519283776?e=1725494400&v=beta&t=G60JRo2Y929uLg7MIfq0XCnIhO5_HNNNPstms-1bo8w',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class Secondscreen extends StatelessWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SizedBox(
            height: 500,
            width: 600,
            child: Center(
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dashatars.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    final Countercontroller countercontroller = Get.put(Countercontroller());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text(
          'Count: ${countercontroller.count}',
          style: TextStyle(
              color: Colors.black,
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

class Themescreen extends StatelessWidget {
  const Themescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: themeController.togglesTheme,
          child: Text('Toggle Theme'),
        ),
      ),
    );
  }
}
