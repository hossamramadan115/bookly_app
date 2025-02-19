import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}

// https://github.com/tharwatsamy/my_bookly
