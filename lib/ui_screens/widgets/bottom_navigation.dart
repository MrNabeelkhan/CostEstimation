import 'package:cost_explanation/ui_screens/app_setting.dart';
import 'package:cost_explanation/ui_screens/check_out_fromchiken.dart';
import 'package:cost_explanation/ui_screens/checkout_2.dart';
import 'package:cost_explanation/ui_screens/current_booking_queue.dart';
import 'package:cost_explanation/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomClass extends StatefulWidget {
  const MainBottomClass({Key? key}) : super(key: key);

  @override
  _MainBottomClassState createState() => _MainBottomClassState();
}

class _MainBottomClassState extends State<MainBottomClass> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    CheckOut(),
    CheckScreen(),
    Center(
        child: Text('Nothing For this Page now...',
            style: TextStyle(color: MyColors.mywhcolor))),
    AppSetting()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.category), label: ""), BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person_sharp), label: ""),

              ],
              currentIndex: selectedIndex,
              onTap: onItemTapped,
              backgroundColor: MyColors.myycolor,
              selectedIconTheme: IconThemeData(
                  color: MyColors.myblackcolor, opacity: 1.0, size: 30.0),
              // unselectedItemColor: Colors.black,
              unselectedIconTheme:
                  IconThemeData(color: MyColors.navcolor, opacity: 1.0, size: 25.0),
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ),
      ),
    );
  }
}
