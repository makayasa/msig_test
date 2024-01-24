import 'package:flutter/material.dart';

class DetailFoodView extends StatefulWidget {
  const DetailFoodView({Key? key}) : super(key: key);

  @override
  State<DetailFoodView> createState() => _DetailFoodViewState();
}

class _DetailFoodViewState extends State<DetailFoodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailFoodView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailFoodView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
