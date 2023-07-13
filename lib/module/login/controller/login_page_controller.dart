import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../state_util.dart';

class LoginPageController extends State<LoginPageView>
    implements MvcController {
  static late LoginPageController instance;
  late LoginPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = '';
  String password = '';
  String role = '';

  doEmailLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAll(const MainNavigationView());
    } on Exception {
      showInfoDialog('Wrong email or password!');
    }
  }
}
