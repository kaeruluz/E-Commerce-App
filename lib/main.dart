import 'package:flutter/material.dart';

import 'package:food_delivery/pages/food/recommended_food_detail.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommendedFoodDetail(),
    );
  }
}
