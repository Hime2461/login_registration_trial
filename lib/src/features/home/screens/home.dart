import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_registration_trial/src/features/home/authentication/tap_controller_y.dart';
//import 'package:login_registration_trial/src/features/home/controllers/tap_controller.dart';

class ValueOfY extends StatelessWidget {
  const ValueOfY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapControllerY tapController=Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetBuilder<TapControllerY>(builder: (_) {
              return Text("Hi, I can access y too, and it's value currently is: " + tapController.y.toString());
            }),
            ElevatedButton(
              onPressed: () {
                tapController.decrease();
              },
              child: Text("Decrease"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go back"),
            )
          ],
        ),
      ),
    );
  }
}
