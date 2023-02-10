import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({Key? key}) : super(key: key);

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  Constants constants = Constants();
   List<IconData> _iconTypes = <IconData>[
    Icons.watch_later_outlined,
    Icons.question_mark,
     Icons.numbers

  ];


   String instructions = '1. The total number of the mock test is 100 minutes with the clock set at the server\n\n2. The countdown timer at the top centre of the screen will show the remaining time left to complete the exam\n\n3. Once the timer reach zero the example in automatically without any permission to end or submit exam\n\n4. Clicking on the "pause" button will display the complete fractions pallets In A grade or list from along with the status of the collections you have answered, not answered or left unattempted\n\n5. The questions palettes will show the status of each questions using the following symbols';
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('MPSC MOCK EXAM 2023',),backgroundColor: constants.yellowOne),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//          Text('MPSC MOCK EXAM 2023', style: TextStyle(fontSize: 20),),
            iconImage(_iconTypes[0] ,"120 Min", "Duration"),
            SizedBox(height: 8),
            iconImage(_iconTypes[1],"100 Questions", "Total Number of Questions"),
            SizedBox(height: 8),
            iconImage(_iconTypes[2],"100 Questions", "Total Number of Marks"),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Instructions',style: TextStyle(fontSize: 20, color: Colors.black),),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(instructions, maxLines: 50,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16,),),
              ),
            ),

            Row(
              children: [
            Padding(
            padding: const EdgeInsets.all(16.0),
          child: Container(
              child: Center(child: Text( '10')),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius:
                BorderRadius.all(Radius.circular(8),)),
          )),],
            )

          ] ),
              ),
      ),
        
      ),
    );
  }
}



Widget iconImage(IconData icon,String title, String subTitle){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
            Icon(icon,size: 30,),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 16),),
                SizedBox(height: 4),
                Text(subTitle,style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],),
        ],
      ),
    ),
  );
}