import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Screen/LoginPage.dart';
import 'package:rajpath_test_series/Screen/OTPVerificationPage.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 8),
            Center(
                child: Image.asset(
              "assets/images/logo.jpg",
              height: 200,
            )),
            SizedBox(height: 24),
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Text('Please enter your mobile number',
                style: TextStyle(fontSize: 16, color: Colors.purple)),
            SizedBox(height: 8),
            constants.TextEdit(context, 'Mobile number'),
            SizedBox(height: 16),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OTPScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Sign Up', style: TextStyle(fontSize: 16)),

                  ),
                )),
                SizedBox(height: 18),

              Row(
                children: [
                  Flexible(
                      flex:2 ,child: Divider(thickness:2,color: Colors.grey,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('OR', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),),
                  ),
                  Flexible(
                      flex:2 ,child: Divider(thickness:2, color: Colors.grey,)),
                ],
              ),
                SizedBox(height: 18),

                Center(child: GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text("Already have an Account? Login", style: TextStyle(fontSize: 18, color: Colors.purple)))),

            ]),
        )),
      ),
    );
  }
}
