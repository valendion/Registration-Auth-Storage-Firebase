import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_revamph/models/failure_model.dart';
import 'package:test_revamph/models/user_registration.dart';
import 'package:test_revamph/services/firebase_auth_services.dart';
import 'package:test_revamph/services/firebase_firestore_services.dart';
import 'package:test_revamph/services/firebase_storage_services.dart';

class RegistrationController extends GetxController {
  FirebaseStorageServices storageServices = FirebaseStorageServices();

  var firebaseFirestoreServices = FirebaseFirestoreServices();

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

  var userRegistration = UserRegistration().obs;

  var messageFirestore = ''.obs;

  String? validationRegistration() {
    if (emailInput.value.text.isEmpty) {
      return 'Email is empty';
    } else if (passInput.value.text.isEmpty) {
      return 'Passwod is empty';
    } else if (!GetUtils.isEmail(emailInput.value.text)) {
      return 'Format email is not corret';
    } else if (mobileInput.value.text.isEmpty) {
      return 'Mobile is empty';
    } else if (nameInput.value.text.isEmpty) {
      return 'Name is empty';
    } else if (yearInput.value.text.isEmpty) {
      return 'Year is empty';
    } else if (collageNameInput.value.text.isEmpty) {
      return 'Collage Name is empty';
    } else if (imageDownload.value.isEmpty) {
      return 'Image is empty';
    } else {
      return null;
    }
  }

  void yearSchool(String userType) {
    userChoose.value = userType;
    userChooseYear.value =
        (userChoose.value == 'Student') ? 'Admission Year' : 'Pass-Out Year ';
  }

  Future<String> getLinkDownload() async {
    return await storageServices.uploadVideo(imageProfile.value);
  }

  Future<Either<String, FailureModel>> uploadRegistration() {
    return FirebaseAuthServices.registEmailPass(
            emailInput.value.text, passInput.value.text)
        .then((_) {
      try {
        userRegistration.value = UserRegistration().copyWith(
          imageLink: imageDownload.value,
          userType: userChoose.value,
          email: emailInput.value.text,
          password: passInput.value.text,
          mobile: mobileInput.value.text,
          collageName: collageNameInput.value.text,
          name: nameInput.value.text,
        );
        firebaseFirestoreServices.nameCollection = 'users';
        firebaseFirestoreServices.addDataFirestore(userRegistration.value).then(
          (value) {
            value.fold((l) => messageFirestore.value = l,
                (r) => messageFirestore.value = r.message);
          },
        );
        return Left(messageFirestore.value);
      } catch (e) {
        return Right(FailureModel(e.toString()));
      }
    });
  }
}
