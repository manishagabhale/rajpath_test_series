import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Screen/EditProfilePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile Photo', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black, ),),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EditProfilePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset('assets/images/user_edit.png',height: 30,width: 30,),
                  ),
                ),
              ],),
            SizedBox(height: 25),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/avatar.jpg', height: 100, width: 500,)
            ),
           /* CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/avatar.jpg')),*/
            SizedBox(height: 16),
            Divider(thickness: 2, color: Colors.grey),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                   Image.asset('assets/images/hash.png',height: 25,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Name', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(height: 4),
                      Text('Manisha Bhimaji Gabhale',style: TextStyle(fontSize: 15)),

                    ],)
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset('assets/images/idcard.png',height: 25,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Aadhar Number ', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8),
                        Text('456789456',style: TextStyle(fontSize: 15)),

                      ],)
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset('assets/images/pin.png',height: 25,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Security Pin ', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8),
                        Text('1234',style: TextStyle(fontSize: 15)),

                      ],)
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset('assets/images/email.png',height: 25,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email Id ', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8),
                        Text('Manisha@gmail.com',style: TextStyle(fontSize: 15)),

                      ],)
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset('assets/images/calendar.png',height: 25,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date of Birth ', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8),
                        Text('07-05-1998',style: TextStyle(fontSize: 15)),
                      ],)
                  ],
                ),

                SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset('assets/images/call.png',height: 25,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile Number ', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8),
                        Text('9284572132',style: TextStyle(fontSize: 15)),

                      ],)
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset('assets/images/call1.png',height: 30,width: 30,),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Alternative Mobile Number ', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8),
                        Text('9582456854',style: TextStyle(fontSize: 15)),

                      ],)
                  ],
                ),


              ],
            ),
          ],
        ),
      ),
    ));
  }
}
