import 'package:get/get.dart';

class TapControllerY extends GetxController {
  int _y=0;
  int get y=>_y;

  void increase() {
    _y++;
    update();
  }

  void reset() {
    _y=0;
    update();
  }

  void decrease() {
    _y--;
    print(_y);
    update();
  }
}