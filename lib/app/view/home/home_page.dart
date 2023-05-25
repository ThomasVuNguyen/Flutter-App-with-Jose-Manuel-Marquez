import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_domestika_list/app/view/add_page.dart';
import 'package:my_domestika_list/app/view/splash/splash_page.dart';
import 'package:my_domestika_list/app/view/task_list/task_list.dart';

import '../../../main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textColor = Color(0xFF4A4A4A);
    const backgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Poppins',
          bodyColor: textColor,
          displayColor: textColor,
        )
      ),
      home: SplashPage(),
    );
  }
}