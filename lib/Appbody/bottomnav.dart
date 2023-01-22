import 'package:flutter/material.dart';
import 'package:mannager/Appbody/screens/assignment_page.dart';
import 'package:mannager/Appbody/screens/attendance_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  final List screen = [AttendancePage(), AssignmentPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getSelectedWidget(index: index),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xffbae5f4),
        //color: colors.white,
        backgroundColor: Colors.white,
        buttonBackgroundColor: const Color(0xffe2d2fe),
        index: index,
        items: const [
          Icon(
            Icons.auto_graph,
            size: 30,
            color: Color(0xff080826),
          ),
          Icon(
            Icons.task,
            size: 30,
            color: Color(0xff080826),
          )
        ],
        onTap: (selectedindex) {
          setState(() {
            index = selectedindex;
          });
        },
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const AttendancePage();
        break;

      default:
        widget = const AssignmentPage();
        break;
    }
    return widget;
  }
}
