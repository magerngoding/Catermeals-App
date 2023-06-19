import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class RegisterPageController extends State<RegisterPage>
    implements MvcController {
  static late RegisterPageController instance;
  late RegisterPage view;

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

  doRegister() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Get.offAll(const LoginPageView());
    } on Exception {
      showInfoDialog('Failed to create an account!');
    }
  }
}
