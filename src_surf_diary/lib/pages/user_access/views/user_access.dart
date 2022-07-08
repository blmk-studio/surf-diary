import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

import 'controllers/user_access_controller.dart';

class UserAccessPage extends GetView<UserAccessController> {
  const UserAccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignInButton(Buttons.Google,
            onPressed: () async => await controller.signInGoogle()),
        SignInButtonBuilder(
            backgroundColor: Colors.black,
            icon: Icons.question_mark,
            onPressed: () async => await controller.signInAnon(),
            text: "Anonymous")
      ],
    )));
  }
}
