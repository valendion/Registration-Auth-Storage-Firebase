import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/registration_controller.dart';
import '../utils/camera_helper.dart';

class RegistrationPage extends StatelessWidget {
  static String nameRoute = '/registration';
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationController registrationController =
        Get.put(RegistrationController());
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Theme.of(context).shadowColor,
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                child: Obx(
                  () => registrationController.imageProfile.value.isNotEmpty
                      ? Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: FileImage(
                                    File(registrationController
                                        .imageProfile.value),
                                  ))))
                      : const SizedBox(
                          width: 120.0,
                          height: 120.0,
                          child: CircleAvatar(
                              child: Icon(
                            Icons.person,
                            size: 50.0,
                          )),
                        ),
                ),
                onTap: () async {
                  var imagePath =
                      await CameraHelper.getPicture().then((value) async {
                    registrationController.imageDownload.value =
                        await registrationController.getLinkDownload();
                    debugPrint(registrationController.imageDownload.value);
                  });

                  registrationController.imageProfile.value =
                      imagePath?.path ?? '';
                },
              ),
              const SizedBox(
                height: 8,
              ),
              DropdownButtonFormField(
                isExpanded: true,
                decoration: const InputDecoration(
                  hintText: 'User type',
                  labelText: 'User type',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                  ),
                ),
                items: registrationController.userType
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  registrationController.yearSchool(value!);
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: registrationController.emailInput.value,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: 'Enter your email',
                  labelText: 'Enter your email',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: registrationController.passInput.value,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: 'Enter your Password',
                  labelText: 'Enter your Password',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                controller: registrationController.mobileInput.value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Enter your phone number',
                    labelText: 'Enter your phone number'),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: registrationController.nameInput.value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Enter your name',
                    labelText: 'Enter your name'),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: registrationController.collageNameInput.value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Enter your collage name',
                    labelText: 'Enter your collage name'),
              ),
              const SizedBox(
                height: 8,
              ),
              Obx(
                () => TextField(
                  keyboardType: TextInputType.number,
                  controller: registrationController.yearInput.value,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      hintText:
                          'Enter your ${registrationController.userChooseYear.value}',
                      labelText:
                          'Enter your ${registrationController.userChooseYear.value}'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {}, child: const Text('Send'))),
            ],
          ),
        ),
      ),
    );
  }
}
