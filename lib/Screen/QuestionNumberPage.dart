import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';
 class QuestionNumbersPage extends StatefulWidget {
   const QuestionNumbersPage({Key? key}) : super(key: key);

   @override
   State<QuestionNumbersPage> createState() => _QuestionNumbersPageState();
 }

 class _QuestionNumbersPageState extends State<QuestionNumbersPage> {
   Constants constants = Constants();
   @override
   Widget build(BuildContext context) {
     return SafeArea(child: Scaffold(
       body: 
       SingleChildScrollView(
         child: Container(
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 Icon(Icons.cancel_outlined),
                 SizedBox(height: 16,),
                 Text('UPSC Mock Exam', style: TextStyle(color: Colors.black, fontSize: 20),),
                 SizedBox(height: 16),
                 IntrinsicHeight(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                     Column(
                       children: [
                         Text('1', style: TextStyle(color:  Colors.blue),),
                         Text('Attempted')
                       ],
                     ),
                       VerticalDivider(
                         color: Colors.grey,
                         thickness: 2,
                       ),
                     Column(
                       children: [
                         Text('4', style: TextStyle(color: constants.yellowOne ),),
                         Text('Skipped')
                       ],
                     ),
                       VerticalDivider(
                         color: Colors.grey,
                         thickness: 2,
                       ),
                     Column(
                       children: [
                         Text('45', style: TextStyle(color: Colors.grey ),),
                         Text('Not Visited')
                       ],
                     )
                   ],),
                 ),
                 SizedBox(height: 16,),
                 Divider(color: Colors.grey,),
                 SizedBox(height: 16,),
                 Text('Questions', style: TextStyle( fontSize: 16),),
                 //gridView(context),

                 Container(

               child: GridView.count(
                 physics: ClampingScrollPhysics(),
                   crossAxisCount: 4,
                   shrinkWrap: true,
                   children: List.generate(50, (index)
                   {
                     return
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Container(
                           child: Center(child: Text( '${index+1}')),
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey),
                             borderRadius:
                             BorderRadius.all(Radius.circular(8),),

                           ),
                         ),
                       );
                   })),
             )
               ],
             ),
           ),
         ),
       ),
     ));
   }
 }

