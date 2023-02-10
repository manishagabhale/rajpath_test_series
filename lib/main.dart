import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rajpath_test_series/Screen/DashboardPage.dart';
import 'package:rajpath_test_series/Screen/LoginPage.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.yellow,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(backgroundColor:constants.yellowOne, shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )))
         // primaryColor: constants.yellowOne
      ),

      home:  LoginPage(),
    );
  }
}


