import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController NamaLengkapC = TextEditingController();
  TextEditingController NoteleponeC = TextEditingController();
  TextEditingController KotaC = TextEditingController();
  TextEditingController PasswordC = TextEditingController();
  RxBool isHiden = true.obs;
}
