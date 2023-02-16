import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailInput = TextEditingController().obs;
  final passInput = TextEditingController().obs;

  String? validationLogin() {
    if (emailInput.value.text.isEmpty) {
      return 'Email is empty';
    } else if (passInput.value.text.isEmpty) {
      return 'Passwod is empty';
    } else if (!GetUtils.isEmail(emailInput.value.text)) {
      return 'Format email is not corret';
    } else {
      return null;
    }
  }
}
