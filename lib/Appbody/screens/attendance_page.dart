import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mannager/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/containerbox.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 215, 206, 206),
      appBar: AppBar(
        backgroundColor: mainbackground,
        elevation: 0.0,
        toolbarHeight: 105,
        actions: [
          Column(
            children: <Widget>[
              Center(
                child: Text("ATTENDANCE",
                    style: GoogleFonts.averiaGruesaLibre(
                        letterSpacing: 15,
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 1, left: 15, right: 0, top: 3),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "ToDay",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inconsolata(
                              fontSize: 25,
                              color: textColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Date and Day
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 15, left: 15, right: 0, top: 0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            DateFormat.yMMMd()
                                .add_EEEE()
                                .format(DateTime.now()),
                            style: GoogleFonts.averiaGruesaLibre(
                                color: textColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Container(
                      height: 40,
                      width: 85,
                      decoration: BoxDecoration(
                          color: lightblue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "75 %",
                          style: GoogleFonts.averiaGruesaLibre(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: const [
                //
                // begining of new container
                //
                Mainboxcontainer(),
                SizedBox(
                  height: 20,
                ),

                //
                //2nd Container
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
