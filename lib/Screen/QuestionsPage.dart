import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Screen/QuestionNumberPage.dart';

import '../Utils/Constants.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    new Center(
        child: new Pages(
      text: "Page 1",
    )),
    new Center(
        child: new Pages(
      text: "Page 2",
    )),
    new Center(
        child: new Pages(
      text: "Page 3",
    )),
    new Center(
        child: new Pages(
      text: "Page 4",
    ))
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      /* appBar:AppBar(
          actions: <Widget>[
          */ /*  Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "Page: "+(
                    _curr+1).toString()+"/"+_list.length.toString(),textScaleFactor: 2,),
            )*/ /*
          ],),*/
      body: PageView(
        children: _list,
       // scrollDirection: Axis.horizontal,

        // reverse: true,
         physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  bool isChecked = false;

  Pages({this.text});
  Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UPSC Mock Exam',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Container(
                          
                          child: Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              SizedBox(width: 4),
                              Text(
                                '60.00',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                              SizedBox(width: 8),
                              GestureDetector(onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuestionNumbersPage()));
                              },
                                  child: Icon(Icons.pause_circle_outline))
                            ],
                          ),
                        )
                      ]
                  ),

                  SizedBox(height: 16),
                  Divider(color: Colors.grey,),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'SINGLE BEST RESPONSE',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {}),
                           Text('Review Later'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Question 3',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 16),
                      Container(
                         // color: constants.lightGreen ,
                          decoration: BoxDecoration(
                            color: constants.lightGreen ,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                            child: Text(
                              '+2',
                              style: TextStyle(color: constants.darkGreen),
                            ),
                          )),
                      SizedBox(width: 16),
                      Container(
                          decoration: BoxDecoration(
                              color: constants.lightRed ,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                            child: Text(
                              '-0.66',
                              style: TextStyle(color: constants.darkRed),
                            ),
                          ))
                    ],
                  ),

                  SizedBox(height: 24),
                  Text('What is the position of the Right to Property in India', style: TextStyle(fontSize: 20),),

                  SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select One Option', style: TextStyle(color: Colors.grey),),
                      Row(
                        children: [
                          Icon(Icons.recycling_sharp, color: Colors.grey,),
                          Text('Clear Response', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Card(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: constants.lightGray,
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('A'),

                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Flexible(child: Text('Legal right available to citizens only'
                            , maxLines: 4,)),
                          ],
                        ),
                      )
                    ],),
                  ),
                  SizedBox(height: 8),
                  Card(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: constants.lightGray,
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('B'),


                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Flexible(child: Text('Legal right available to any person', maxLines: 4,)),
                          ],
                        ),
                      )
                    ],),
                  ),
                  SizedBox(height: 8),
                  Card(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: constants.lightGray,
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('C'),


                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Flexible(child: Text('Fundamental right available to citizens only',
                            maxLines: 4,)),
                          ],
                        ),
                      )
                    ],),
                  ),
                  SizedBox(height: 8),
                  Card(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: constants.lightGray,
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('D'),


                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Flexible(

                                child: Text(
                                    'Neither fundamental right nor legal right',
                                maxLines: 4,)),
                          ],
                        ),
                      )
                    ],),
                  ),
                  SizedBox(height: 24),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(

                      children: [
                        Expanded(
                          child: ElevatedButton(onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Previous'),
                          ),
                            style:  ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(color: constants.yellowOne)
                            )),),
                        ),
                        SizedBox(width: 12),
                        Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Save & Next'),
                        ))),

                      ],
                    ),
                  ),
                  SizedBox(height: 16)
                 /* Text(text,textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 30,fontWeight:FontWeight.bold),),*/
                ]),
          ),
        ),
      ),
    );
  }
}
