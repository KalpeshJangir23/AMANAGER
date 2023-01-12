import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mannager/utils/colors.dart';
import 'package:mannager/utils/measurement.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({super.key});
  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  double _counter1 = 0;
  double _counter2 = 0;
  double _counter3 = 0;
  double _counter4 = 0;
  double _counter5 = 0;
  double pc = 0;
  double _percentage1 = 0;
  double round_result1 = 0;
  void _incrementCounter1() {
    setState(() {
      _counter1++;
      _percentage1 = _counter1 / 35 * 100;
      round_result1 = _percentage1.roundToDouble();
      if (_counter1 > 35) {
        _counter1 = 35;
      }
    });
  }

  void _decrementCounter1() {
    setState(() {
      _counter1--;
      _percentage1 = _counter1 / 35 * 100;
      round_result1 = _percentage1.roundToDouble();
      if (_counter1 < 0) {
        _counter1 = 0;
        round_result1 = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var sum = _counter1 + _counter2 + _counter3 + _counter4 + _counter5;
    var pers = sum / 210 * 100;
    var pc = pers.roundToDouble();

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: mainbackground,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // Attendance Label
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'ATTENDANCE',
                  style: GoogleFonts.inconsolata(
                      letterSpacing: 20, fontSize: 20, color: textColor),
                ),
              ),
            ),
            // today label
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 0, left: 8, right: 0, top: 3),
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
            // Date and Day
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 10, left: 8, right: 0, top: 0),
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
            /////////////// attendance label ///////////////
            Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: greenContainer,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 2,
                  color: mainbackground,
                ),
              ),
              child: Center(
                child: Text(
                  '$pc%',
                  style: GoogleFonts.averiaGruesaLibre(
                    fontSize: 25,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   '75%',
                //   style: GoogleFonts.averiaGruesaLibre(
                //     color: textColor,
                //     fontSize: 25,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ),
            // Single child scroll view for appending the data

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 205,
                        width: 205,
                        decoration: BoxDecoration(
                          color: color3,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                        /////////////COLUMN START FROM HERE//////////////////////////
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: sizedBoxhieght,
                            ),
                            Center(
                              child: Text(
                                'Mathematics',
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: containertext - 10,
                                    color: textColor),
                              ),
                            ),
                            const Divider(
                              color: iconColor,
                              thickness: 2,
                            ),
                            Text(
                              '$_counter1/35',
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: counter_text_size,
                                  color: counter_text_color),
                            ),
                            Text(
                              '$round_result1%',
                              style: GoogleFonts.averiaGruesaLibre(
                                fontSize: counter_text_size - 5,
                                color: textColor,
                              ),
                            ),
                            const Spacer(),
                            // ///////////// ROW  for button  /////////
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  const Spacer(),
                                  FloatingActionButton(
                                    backgroundColor: color2,
                                    onPressed: _incrementCounter1,
                                    child: const Icon(
                                      Icons.add,
                                      color: mainbackground,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: color2,
                                    onPressed: _decrementCounter1,
                                    child: const Icon(
                                      Icons.remove,
                                      color: mainbackground,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ////////////// Close of First Container////////////////////
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 205,
                        width: 205,
                        decoration: BoxDecoration(
                          color: color3,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: sizedBoxhieght,
                            ),
                            Center(
                              child: Text(
                                'Operating System',
                                style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: containertext, color: textColor),
                              ),
                            ),
                            const Divider(
                              color: iconColor,
                              thickness: 2,
                            ),
                            // Text(
                            //   '$_counter',
                            //   style: GoogleFonts.averiaGruesaLibre(
                            //       fontSize: counter_text_size,
                            //       color: counter_text_color),
                            // ),
                            // Text(
                            //   '$round_result%',
                            //   style: GoogleFonts.averiaGruesaLibre(
                            //     fontSize: counter_text_size - 5,
                            //     color: textColor,
                            //   ),
                            // ),
                            const Spacer(),
                            // ///////////// ROW  for button  /////////
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: const <Widget>[
                                  Spacer(),
                                  FloatingActionButton(
                                    backgroundColor: color2,
                                    onPressed: null,
                                    child: Icon(
                                      Icons.add,
                                      color: mainbackground,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: color2,
                                    onPressed: null,
                                    child: Icon(
                                      Icons.remove,
                                      color: mainbackground,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ////////////// Close of Second Container////////////////////
                  ],
                ),
                /////////////////////close of scrollView///////////////////////
              ),
            ),
          ],
        ),
      ),
    );
  }
}
