import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController PasswordC = TextEditingController();

  RxBool isHiden = true.obs;
}
