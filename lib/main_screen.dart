// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mannager/utils/colors.dart';
import 'package:mannager/utils/measurement.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double sum = 0;
  double _counter = 0;
  double _counter1 = 0;
  double _counter2 = 0;
  double _counter3 = 0;
  double _counter4 = 0;
  double _counter5 = 0;
  double _percentage0 = 0;
  double round_result = 0;
  double _percentage1 = 0;
  double round_result1 = 0;
  double _percentage2 = 0;
  double round_result2 = 0;
  double _percentage3 = 0;
  double round_result3 = 0;
  double _percentage4 = 0;
  double round_result4 = 0;
  double _percentage5 = 0;
  double round_result5 = 0;
  double percentage = 0;
  double pers = 0;
  double pc = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _percentage0 = _counter / 35 * 100;
      round_result = _percentage0.roundToDouble();
      if (_counter > 35) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Error'),
              content: Text('The value exceeds the maximum allowed'),
            );
          },
        );
      }
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter1++;
      _percentage1 = _counter1 / 35 * 100;
      round_result1 = _percentage1.roundToDouble();
      if (_counter1 > 35) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Error'),
              content: Text('The value exceeds the maximum allowed'),
            );
          },
        );
      }
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
      _percentage2 = _counter2 / 35 * 100;
      round_result2 = _percentage2.roundToDouble();
      if (_counter2 > 35) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Error'),
              content: Text('The value exceeds the maximum allowed'),
            );
          },
        );
      }
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
      _percentage3 = _counter3 / 35 * 100;
      round_result3 = _percentage3.roundToDouble();
      if (_counter3 > 35) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Error'),
              content: Text('The value exceeds the maximum allowed'),
            );
          },
        );
      }
    });
  }

  void _incrementCounter4() {
    setState(() {
      _counter4++;
      _percentage4 = _counter4 / 35 * 100;
      round_result4 = _percentage4.roundToDouble();
      if (_counter4 > 35) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Error'),
              content: Text('The value exceeds the maximum allowed'),
            );
          },
        );
      }
    });
  }

  void _incrementCounter5() {
    setState(() {
      _counter5++;
      _percentage5 = _counter5 / 35 * 100;
      round_result5 = _percentage5.roundToDouble();
      if (_counter5 > 35) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Error'),
              content: Text('The value exceeds the maximum allowed'),
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var sum =
        _counter + _counter1 + _counter2 + _counter3 + _counter4 + _counter5;
    var pers = sum / 210 * 100;
    var pc = pers.roundToDouble();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainbackground,
        actions: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A T T E N D A N C E',
              textAlign: TextAlign.center,
              style: GoogleFonts.inconsolata(
                letterSpacing: 10,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: mainbackground,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: h_boxContainer,
                      width: w_boxContainer,
                      decoration: BoxDecoration(
                        color: containerColor,
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
                              'Mathematics',
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: containertext, color: textColor),
                            ),
                          ),
                          const Divider(
                            color: iconColor,
                            thickness: 1,
                          ),
                          Text(
                            '$_counter',
                            style: GoogleFonts.averiaGruesaLibre(
                                fontSize: counter_text_size,
                                color: counter_text_color),
                          ),
                          Text(
                            '$round_result%',
                            style: GoogleFonts.averiaGruesaLibre(
                              fontSize: counter_text_size - 5,
                              color: textColor,
                            ),
                          ),
                          const Spacer(),
                          FloatingActionButton(
                            backgroundColor: color3,
                            onPressed: _incrementCounter,
                            child: const Icon(
                              Icons.add,
                              color: mainbackground,
                            ),
                          ),
                          const SizedBox(height: sizedBoxhieght),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h_boxContainer,
                      width: w_boxContainer,
                      decoration: BoxDecoration(
                        color: containerColor,
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
                              'AOA',
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: containertext, color: textColor),
                            ),
                          ),
                          const Divider(
                            color: iconColor,
                            thickness: 1,
                          ),
                          Text(
                            '$_counter1',
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
                          FloatingActionButton(
                            backgroundColor: color3,
                            onPressed: _incrementCounter1,
                            child: const Icon(
                              Icons.add,
                              color: mainbackground,
                            ),
                          ),
                          const SizedBox(height: sizedBoxhieght),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h_boxContainer,
                      width: w_boxContainer,
                      decoration: BoxDecoration(
                        color: containerColor,
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
                              'DbMS',
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: containertext, color: textColor),
                            ),
                          ),
                          const Divider(
                            color: iconColor,
                            thickness: 1,
                          ),
                          Text(
                            '$_counter2',
                            style: GoogleFonts.averiaGruesaLibre(
                                fontSize: counter_text_size,
                                color: counter_text_color),
                          ),
                          Text(
                            '$round_result2%',
                            style: GoogleFonts.averiaGruesaLibre(
                              fontSize: counter_text_size - 5,
                              color: textColor,
                            ),
                          ),
                          const Spacer(),
                          FloatingActionButton(
                            backgroundColor: color3,
                            onPressed: _incrementCounter2,
                            child: const Icon(
                              Icons.add,
                              color: mainbackground,
                            ),
                          ),
                          const SizedBox(height: sizedBoxhieght),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: w_boxContainer,
                  height: h_boxContainer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: color3,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: w_circularContainer,
                          height: h_circularContainer,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: mainbackground,
                            border: Border.all(
                              color: mainbackground,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '$pc%',
                              style: GoogleFonts.averiaGruesaLibre(
                                fontSize: 48,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: h_boxContainer,
                      width: w_boxContainer,
                      decoration: BoxDecoration(
                        color: containerColor,
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
                                  fontSize: containertext - 5,
                                  fontWeight: FontWeight.bold,
                                  color: textColor),
                            ),
                          ),
                          const Divider(
                            color: iconColor,
                            thickness: 1,
                          ),
                          Text(
                            '$_counter3',
                            style: GoogleFonts.averiaGruesaLibre(
                                fontSize: counter_text_size,
                                color: counter_text_color),
                          ),
                          Text(
                            '$round_result3%',
                            style: GoogleFonts.averiaGruesaLibre(
                              fontSize: counter_text_size - 3,
                              color: textColor,
                            ),
                          ),
                          const Spacer(),
                          FloatingActionButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            backgroundColor: color3,
                            onPressed: _incrementCounter3,
                            child: const Icon(
                              Icons.add,
                              color: mainbackground,
                            ),
                          ),
                          const SizedBox(height: sizedBoxhieght),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h_boxContainer,
                      width: w_boxContainer,
                      decoration: BoxDecoration(
                        color: containerColor,
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
                              'Microprocessor',
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: containertext - 3,
                                  color: textColor),
                            ),
                          ),
                          const Divider(
                            color: iconColor,
                            thickness: 1,
                          ),
                          Text(
                            '$_counter4',
                            style: GoogleFonts.averiaGruesaLibre(
                                fontSize: counter_text_size,
                                color: counter_text_color),
                          ),
                          Text(
                            '$round_result4%',
                            style: GoogleFonts.averiaGruesaLibre(
                              fontSize: counter_text_size - 5,
                              color: textColor,
                            ),
                          ),
                          const Spacer(),
                          FloatingActionButton(
                            backgroundColor: color3,
                            onPressed: _incrementCounter4,
                            child: const Icon(
                              Icons.add,
                              color: mainbackground,
                            ),
                          ),
                          const SizedBox(height: sizedBoxhieght),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h_boxContainer,
                      width: w_boxContainer,
                      decoration: BoxDecoration(
                        color: containerColor,
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
                              'Python',
                              style: GoogleFonts.averiaGruesaLibre(
                                  fontSize: containertext, color: textColor),
                            ),
                          ),
                          const Divider(
                            color: iconColor,
                            thickness: 1,
                          ),
                          Text(
                            '$_counter5',
                            style: GoogleFonts.averiaGruesaLibre(
                                fontSize: counter_text_size,
                                color: counter_text_color),
                          ),
                          Text(
                            '$round_result5%',
                            style: GoogleFonts.averiaGruesaLibre(
                              fontSize: counter_text_size - 5,
                              color: textColor,
                            ),
                          ),
                          const Spacer(),
                          FloatingActionButton(
                            backgroundColor: color3,
                            onPressed: _incrementCounter5,
                            child: const Icon(
                              Icons.add,
                              color: mainbackground,
                            ),
                          ),
                          const SizedBox(height: sizedBoxhieght),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
