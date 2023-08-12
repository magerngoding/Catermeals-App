import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cater_meals/state_util.dart';
import '../../../rolebased/login.dart';
import '../view/home_page_seller2_view.dart';

class HomePageSeller2Controller extends State<HomePageSeller2View> {
  static late HomePageSeller2Controller instance;
  late HomePageSeller2View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  doLogout() async {
    await FirebaseAuth.instance.signOut();

    Get.offAll(const LoginPage());
  }
}
