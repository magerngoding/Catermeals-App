import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/service/product_service.dart/product_service.dart';
import 'package:hyper_ui/state_util.dart';
import '../../../rolebased/login.dart';
import '../view/product_list_seller.dart';

class ProductListSellerPageController extends State<ProductListSeller>
    implements MvcController {
  static late ProductListSellerPageController instance;
  late ProductListSeller view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doDelete(String id) async {
    ProductService().delete(id);
  }

  String search = "";
  updateSearch(String query) {
    search = query;
    setState(() {});
  }

  doLogout() async {
    await FirebaseAuth.instance.signOut();

    Get.offAll(const LoginPage());
  }
}
