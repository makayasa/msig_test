import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_favorites_food_controller.dart';

class ListFavoritesFoodView extends GetView<ListFavoritesFoodController> {
  const ListFavoritesFoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListFavoritesFoodView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ListFavoritesFoodView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
