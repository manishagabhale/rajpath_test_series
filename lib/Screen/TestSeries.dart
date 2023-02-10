import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Screen/QuestionsPage.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

class TestSeries extends StatefulWidget {
  const TestSeries({Key? key}) : super(key: key);

  @override
  State<TestSeries> createState() => _TestSeriesState();
}

class _TestSeriesState extends State<TestSeries> {
 Constants constants = Constants();
  final titles = ["Combine Test -01", "Combine Test -02", "Combine Test -03","Combine Test -04",
    "Combine Test -05", "Combine Test -06", "Combine Test -07","Combine Test -08"];


  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Test Series"),
        backgroundColor: constants.yellowOne,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.filter_alt),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return
                Card(
                  // elevation: 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/img.png", height: 60,),
                                  SizedBox(width: 8,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(titles[index], style: TextStyle(fontSize: 16.0, color: Colors.black),),
                                      SizedBox(height: 8),
                                      Text("Attempts Allowed: 3",  style: TextStyle(fontSize: 12.0)),
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton(onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuestionsPage()));
                              }, child: Text("Attempt")),
                            ],
                          ),
                        ],
                      ),
                    ));
            }),
      ),
    );
  }
}



