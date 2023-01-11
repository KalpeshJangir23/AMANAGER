import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mannager/utils/colors.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({super.key});
  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  @override
  Widget build(BuildContext context) {
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
                  '75%',
                  style: GoogleFonts.averiaGruesaLibre(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
            // Single child scroll view for appending the data
          ],
        ),
      ),
    );
  }
}
