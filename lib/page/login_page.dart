import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_revamph/controller/login_controller.dart';

import '../utils/constans.dart';

class LoginPage extends StatelessWidget {
  static String nameRoute = '/';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(
                    '${Constans.rootPath}illustrator_login.svg',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: loginController.emailInput.value,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Enter your email',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  controller: loginController.passInput.value,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Enter your Password',
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (loginController.validationLogin() != null) {
                            Get.snackbar('Validation alert',
                                loginController.validationLogin().toString());
                          }
                        },
                        child: const Text('Login'))),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member ? '),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register Now'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
