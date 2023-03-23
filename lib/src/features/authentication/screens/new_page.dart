import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_registration_trial/src/features/authentication/controllers/tap_controller.dart';

class ValueOfX extends StatelessWidget {
  const ValueOfX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController=Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Text("Hi, I can access x too, and it's value currently is: " + tapController.x.toString());
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
