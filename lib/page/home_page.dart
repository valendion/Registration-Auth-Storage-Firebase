import 'package:flutter/material.dart';
import 'package:test_revamph/utils/constans.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  static String nameRoute = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            '${Constans.rootPath}illustrator_sign_up.svg',
          )
        ],
      ),
    );
  }
}
