import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_revamph/services/firebase_storage_services.dart';

class RegistrationController extends GetxController {
  FirebaseStorageServices storageServices = FirebaseStorageServices();
  final emailInput = TextEditingController().obs;
  final passInput = TextEditingController().obs;
  final mobileInput = TextEditingController().obs;
  final nameInput = TextEditingController().obs;
  final collageNameInput = TextEditingController().obs;
  final yearInput = TextEditingController().obs;

  List<String> userType = ['Student', 'Alumni'];
  var userChooseYear = 'Admission Year'.obs;
  var userChoose = ''.obs;

  var imageProfile = ''.obs;
  var imageDownload = ''.obs;

  void yearSchool(String userType) {
    userChoose.value = userType;
    userChooseYear.value =
        (userChoose.value == 'Student') ? 'Admission Year' : 'Pass-Out Year ';
  }

  Future<String> getLinkDownload() async {
    return await storageServices.uploadVideo(imageProfile.value);
  }
}
