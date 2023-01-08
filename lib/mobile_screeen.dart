import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
//import 'package:mannager/trying_out_stuff.dart/container.dart';
import 'package:mannager/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: mainbackground,
        child: Column(
          children: [
            /////////////////////////////////SIZE BOX/////////////////////////////////
            const SizedBox(
              height: 5,
            ),
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
            /////////////////////////////////SIZE BOX/////////////////////////////////
            const SizedBox(
              height: 10,
            ),

            ///////////////////////////////TODO : calender and date and time include here///////
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: mainbackground,
                          ),
                        ),
                      ),
                    ),

                    //
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}