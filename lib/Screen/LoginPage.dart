import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Screen/DashboardPage.dart';
import 'package:rajpath_test_series/Screen/SignUpPage.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

import 'InstructionPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Center(child: Image.asset("assets/images/logo.jpg", height:200,)),

              SizedBox(height: 24),
            /*  Text('Sign Up', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 24),*/
              Text('Enter Mobile Number', style: TextStyle(fontSize: 16, color: Colors.purple)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Mobile Number'),
              SizedBox(height:16),
              Text('Enter Password', style: TextStyle(fontSize: 16, color: Colors.purple)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'password'),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InstructionPage()));
                  },child:  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Login', style: TextStyle(fontSize: 16)),
                  ),)
              ),
              SizedBox(height: 18),
            Center(child: GestureDetector(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      child: Text("Don't have an Account? Sign up", style: TextStyle(fontSize: 18, color: Colors.purple)))),
            ],
          ),
        ),
      ),
    ));
  }
}
