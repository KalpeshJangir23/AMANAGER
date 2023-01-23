import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mannager/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

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
                                fontSize: 24.0,
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
                      width: 90,
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
              children: [
                //
                // begining of new container
                //
                Container(
                  height: 150,
                  width: 320,
                  //color: textColor,
                  decoration: BoxDecoration(
                    color: textColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
                      //       child: Container(
                      //         color: textColor,
                      //         child: TextField(
                      //           style: GoogleFonts.averiaGruesaLibre(
                      //               color: maintextColor, fontSize: 25),
                      //           decoration: const InputDecoration(
                      //               border: InputBorder.none),
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      //       child: Container(
                      //         height: 40,
                      //         width: 90,
                      //         decoration: BoxDecoration(
                      //             color: lightblue,
                      //             borderRadius: BorderRadius.circular(30)),
                      //         child: Center(
                      //           child: Text(
                      //             "75 %",
                      //             style: GoogleFonts.averiaGruesaLibre(
                      //               color: textColor,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      const Divider(
                        color: mainbackground,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: lightblue,
                                shape: BoxShape.circle,
                                border: Border.all(color: textColor),
                              ),
                            ),
                          ),
                          Text(
                            "/",
                            style: GoogleFonts.averiaGruesaLibre(
                                fontSize: 45, color: mainbackground),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: lightblue,
                                shape: BoxShape.circle,
                                border: Border.all(color: textColor),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 1),
                                  child: TextField(
                                    style: GoogleFonts.averiaGruesaLibre(
                                        color: textColor, fontSize: 25),
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //
                //2nd Container
                //

                // Container(
                //   height: 100,
                //   width: 320,
                //   //color: textColor,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //2nd Container
                // //

                // Container(
                //   height: 100,
                //   width: 320,
                //   //color: textColor,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //3nd Container
                // //

                // Container(
                //   height: 100,

                //   width: 320,
                //   //color: textColor,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //2nd Container
                // //

                // Container(
                //   height: 100,
                //   width: 320,
                //   //color: textColor,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //2nd Container
                // //

                // Container(
                //   height: 100,
                //   width: 320,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //2nd Container
                // //

                // Container(
                //   height: 100,
                //   width: 320,
                //   //color: textColor,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //2nd Container
                // //

                // Container(
                //   height: 100,
                //   width: 320,
                //   //color: textColor,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // //
                // //2nd Container
                // //

                // Container(
                //   height: 100,
                //   width: 320,
                //   decoration: BoxDecoration(
                //     color: textColor,
                //     borderRadius: BorderRadius.circular(30),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 3,
                //         blurRadius: 10,
                //         offset: const Offset(0, 3),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
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
