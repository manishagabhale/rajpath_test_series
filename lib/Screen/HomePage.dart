import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'), backgroundColor: constants.yellowOne),
      body: Container(),
    );
  }
}
