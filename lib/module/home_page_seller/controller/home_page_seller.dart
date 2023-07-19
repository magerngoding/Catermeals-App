import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../rolebased/login.dart';
import '../../../state_util.dart';
import '../view/home_page_seller.dart';

class HomePageSellerController extends GetxController {
  static late HomePageSellerController instance;
  HomePageSellerView? view;

  doLogout() async {
    await FirebaseAuth.instance.signOut();

    Get.offAll(const LoginPage());
  }
}
