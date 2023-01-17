import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/kurs_controller.dart';

class KursErstellenScreen extends StatelessWidget {
  KursController _controller = Get.find();

  KursErstellenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Obx(
                () => Text(
                  "${_controller.changed.value}",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _controller.changed++;
            },
            child: Text("add"),
          )
        ],
      ),
    );
  }
}

// flutter pub add get
