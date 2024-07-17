import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigationscreen extends StatelessWidget {
  const Navigationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.toNamed('/second',);
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
          'Second Page',
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