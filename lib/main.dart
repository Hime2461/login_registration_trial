import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_registration_trial/src/features/authentication/controllers/tap_controller.dart';
import 'package:login_registration_trial/src/features/authentication/screens/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Taps(),
    );
  }
}

class Taps extends StatelessWidget {
  Taps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GetBuilder<TapController>(builder: (tapController) {
                  return Text("Hello, you have pressed button " +
                      tapController.x.toString() +
                      " times!");
                }),
                ElevatedButton(
                  onPressed: () {
                    controller.reset();
                  },
                  child: Text("Reset"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => ValueOfX());
                  },
                  child: Text("Go to next page"),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increase();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
