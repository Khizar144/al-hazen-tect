import 'package:flutter/material.dart';
import 'package:my_web_app/Home_Screen/Home_screen.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/industries_section.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        home: HomeScreen(),
      );
    });
  }
}
