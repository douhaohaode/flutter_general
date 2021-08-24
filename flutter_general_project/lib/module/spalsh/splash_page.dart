import 'package:flutter/material.dart';
import 'package:flutter_general_project/module/spalsh/splash_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => controller.gotoLogin(),
          child: Text('点击进入 Login 页面'),
        ),
      ),
    );
  }
}
