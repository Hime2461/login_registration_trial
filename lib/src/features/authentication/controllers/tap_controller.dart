import 'package:get/get.dart';

class TapController extends GetxController {
  int _x=0;
  int get x=>_x;

  void increase() {
    _x++;
    update();
  }

  void reset() {
    _x=0;
    update();
  }

  void decrease() {
    _x--;
    print(_x);
    update();
  }
}