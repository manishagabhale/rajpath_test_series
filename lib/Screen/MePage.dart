import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rajpath_test_series/Screen/ProfilePage.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

class MePage extends StatefulWidget {
  const MePage({Key? key}) : super(key: key);
  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
          Column(
            children: [
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/profile.png',height: 40,width: 40,),
                      SizedBox(width: 8,),
                      Text("Manisha Bhimaji Gabhale", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: Card(
                      color: Colors.white54,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: 70,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child:
                            Center(child: Text("Profile")),
                          ),
                        ),
                      ),
                    ),
                  )
                ])),

              SizedBox(height: 8),

              Card(
              elevation: 2,
              color: constants.light,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('COMPLETE YOUR PROFILE', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    Text('To give you personalised learning experience we recommend you to complete your profile.'),
                    SizedBox(height: 16),
                    Container(
                      width: MediaQuery.of(context).size.width-50,
                      child: LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.8,
                        progressColor: Colors.green,
                        trailing: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('80%'),
                        ),

                        // )
                      ),
                    )
                  ],
                ),
              )
              ),

              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Card(
                          color: Colors.white54,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.notifications_active, color: Colors.blue,),
                                SizedBox(width: 8),
                                Text('Notification'),
                              ],
                            ),
                          )

                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Card(
                            color: Colors.white54,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.chat, color: Colors.purple,),
                                  SizedBox(width: 8,),
                                  Text('Doubts'),
                                ],
                              ),)),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child:
                      Container(
                        height: 60,
                        child: Card(
                            color: Colors.white54,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.settings),
                                  SizedBox(width: 8,),
                                  Text('Settings'),
                                ],
                              ),
                            )

                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Container(
                        height: 60,
                        child: Card(
                            color: Colors.white54,
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.contact_support_outlined, color:  Colors.pinkAccent),
                                  SizedBox(width: 8),
                                  Text('Contact Us'),
                                ],
                              ),
                            )

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.grey,
              )
            ],
          )
      ),
    );
  }
}
