import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile'), backgroundColor: constants.yellowOne,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Profile Photo', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black, ),),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/avatar.jpg', height: 100, width: 500,)

              ),
              SizedBox(height: 16),
              Divider( thickness: 1,color: Colors.grey,),
              SizedBox(height: 16),
              Text('Full Name', style: TextStyle(fontSize: 16),),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Full Name'),
              SizedBox(height: 16),
              Text('Aadhar Number', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Aadhar Number'),
              SizedBox(height: 16),
              Text('Security Pin', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Security Pin'),
              SizedBox(height: 16),
              Text('Email Id', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Email Id'),
              SizedBox(height: 16),
              Text('Date of Birth', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Date of Birth'),
              SizedBox(height: 16),
              Text('Mobile Number', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Mobile Number'),
              SizedBox(height: 16),
              Text('Address', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Address'),
              SizedBox(height: 16),
              Text('Alternative Mobile Number', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              constants.TextEdit(context, 'Alternative Mobile Number'),
              SizedBox(height: 24),
              Row(
                
                children: [
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Update Profile'),
                  ))),
                  SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Cancel'),
                    ),
                    style:  ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: constants.yellowOne)
                    )),),
                  ),
                ],
              ),
              SizedBox(height: 16)
            ],
          ),
        ),
      ) ,

    );
  }
}
