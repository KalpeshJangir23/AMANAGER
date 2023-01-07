import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mannager/utils/colors.dart';
//import 'package:mannager/utils/measurement.dart';
import 'package:mannager/utils/mobile_measurment.dart';

class MScreen extends StatefulWidget {
  const MScreen({super.key});

  @override
  State<MScreen> createState() => _MScreenState();
}

class _MScreenState extends State<MScreen> {
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.align_vertical_bottom,
        color: textColor,
        size: 25,
      ),
      const Icon(
        Icons.home_outlined,
        color: textColor,
        size: 30,
      ),
      const Icon(
        Icons.architecture,
        color: textColor,
        size: 30,
      ),
      const Icon(
        Icons.settings,
        color: textColor,
        size: 30,
      ),
    ];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: mainbackground,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'ATTENDANCE',
                  style: GoogleFonts.averiaGruesaLibre(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 0, left: 5, right: 0, top: 10),
              child: Row(
                children: [
                  Text(
                    "ToDay",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inconsolata(
                      fontSize: 25,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 10, left: 5, right: 0, top: 0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      DateFormat.yMMMd().add_EEEE().format(DateTime.now()),
                      style: GoogleFonts.averiaGruesaLibre(
                        color: textColor,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container area Start from here

            const SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  width: widthofcontainer,
                  height: hboxContainer,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: mainbackground,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: widthofcontainer,
                  height: hboxContainer,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: mainbackground,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: widthofcontainer,
                  height: hboxContainer,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: mainbackground,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            /////////////////////// Second Area of the app//////////////////////////

            const SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                const Spacer(),
                Container(
                  width: widthofcontainer,
                  height: hboxContainer,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: mainbackground,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: widthofcontainer,
                  height: hboxContainer,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: mainbackground,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: widthofcontainer,
                  height: hboxContainer,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: mainbackground,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
      // ToDo : Bottom navgation
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: iconBkColor,
        color: mainbackground,
        backgroundColor: secondColor,
        height: 55,
        index: 1,
        items: items,
        animationDuration: const Duration(milliseconds: 400),
      ),
    );
  }
}
