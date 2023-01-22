import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mannager/utils/colors.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainbackground,
        elevation: 0.0,
        title: Center(
          child: Text("ASSIGNMENT",
              style: GoogleFonts.averiaGruesaLibre(
                  letterSpacing: 15,
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
