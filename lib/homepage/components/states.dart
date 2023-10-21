import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SetState extends GetxController {
  RxBool hoverdisabled = false.obs;
  static var size = Size(100, 200).obs;

  static var hgeaderPadding =
      EdgeInsets.symmetric(vertical: 10, horizontal: 200).obs;
  static var NavPadding = EdgeInsets.symmetric(horizontal: 12).obs;
  static var sectionPadding =
      EdgeInsets.symmetric(vertical: 100, horizontal: 200).obs;
}
