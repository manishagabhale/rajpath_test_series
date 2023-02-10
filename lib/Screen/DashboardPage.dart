import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rajpath_test_series/Screen/HomePage.dart';
import 'package:rajpath_test_series/Screen/MePage.dart';
import 'package:rajpath_test_series/Screen/TestSeries.dart';
import 'package:rajpath_test_series/Utils/Constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Constants  constants = Constants();
  PageController controller = PageController(initialPage: 0);
  var selected = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          HomePage(),
          TestSeries(),
          MePage()

        ],
      ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon:Icon(Icons.home, color: Colors.black,),

          )
        ],

        )
      /*    bottomNavigationBar: StylishBottomBar(

        backgroundColor: constants.yellowOne,
        items: [
          BubbleBarItem(
            backgroundColor: constants.lightYellow ,
            icon: const Icon(Icons.home, color: Colors.black,),
            title: const Text('Home', style: TextStyle(color: Colors.black)),
          ),
          BubbleBarItem(
            backgroundColor: constants.lightYellow ,
            icon: const Icon(Icons.book,color: Colors.black,),
            title: const Text('Test Series', style: TextStyle(color: Colors.black)),
          ),
          BubbleBarItem(
            backgroundColor: constants.lightYellow ,
            icon: const Icon(Icons.person, color: Colors.black,),
            title: const Text('Me', style: TextStyle(color: Colors.black),),
          ),
        ],

        // iconSize: 32,
       // barStyle: BubbleBarStyle.horizotnal,
        // barStyle: BubbleBarStyle.vertical,
        //bubbleFillStyle: BubbleFillStyle.fill,

        // bubbleFillStyle: BubbleFillStyle.outlined,
        opacity: 0.3,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index!;
            controller.jumpToPage(index);
          });
        },
      ),*/
    );
  }
}