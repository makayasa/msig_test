import 'package:get/get.dart';

import '../controllers/list_favorites_food_controller.dart';

class ListFavoritesFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListFavoritesFoodController>(
      () => ListFavoritesFoodController(),
    );
  }
}
