import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../service/product_non_vegetarian_service/product_non_vegetarian_service.dart';
import '../../../shared/util/show_loading/show_loading.dart';
import '../../../state_util.dart';
import '../view/product_form_non_vegetarian_view.dart';

class ProductFormNonVegetarianController extends GetxController {
  ProductFormNonVegetarianView? view;

  String? id;
  String? photo;
  String? productName;
  double? price;
  String? category;
  String? description;

  doSave() async {
    showLoading();
    await ProductNonVegetarianService().create(
      photo: photo!,
      productName: productName!,
      price: price!,
      category: category!,
      description: description!,
    );
    hideLoading();
    Get.back();
  }
}
