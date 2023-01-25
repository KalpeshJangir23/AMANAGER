import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class Mainboxcontainer extends StatefulWidget {
  const Mainboxcontainer({
    super.key,
  });

  @override
  State<Mainboxcontainer> createState() => _MainboxcontainerState();
}

int plus = 0;
int primaryresult = 0;

class _MainboxcontainerState extends State<Mainboxcontainer> {
  void _plusincremnent() {
    setState(() {
      plus++;
    });
  }

  void _minusdecremnent() {
    setState(() {
      if (plus == 0) {
        plus = 0;
      } else {
        plus--;
      }
    });
  }

  final TextEditingController numberController = TextEditingController();

  // void _maintryingfunction() {
  //   setState(() {
  //     if (numberController == plus) {
  //       primaryresult = 100;
  //     } else {
  //       primaryresult = 0;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 190,
                    height: 40,
                    decoration: BoxDecoration(
                      color: textColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      style: GoogleFonts.averiaGruesaLibre(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: maintextColor),
                      decoration: const InputDecoration(
                        hintText: "   enter Subject",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.white54),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: lightblue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(child: GestureDetector()),
                ),
              ),
            ],
          ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        '$plus',
                        style: GoogleFonts.averiaGruesaLibre(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 2),
                    child: Center(
                      child: TextField(
                        controller: numberController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.averiaGruesaLibre(
                            color: textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: _plusincremnent,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: lightblue,
                    shape: BoxShape.circle,
                    border: Border.all(color: textColor),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: _minusdecremnent,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: lightblue,
                    shape: BoxShape.circle,
                    border: Border.all(color: textColor),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: textColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
