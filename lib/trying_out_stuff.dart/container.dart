import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ConatainerBuild extends StatefulWidget {
  const ConatainerBuild({super.key});

  @override
  State<ConatainerBuild> createState() => _ConatainerBuildState();
}

class _ConatainerBuildState extends State<ConatainerBuild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
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
            const SizedBox(
              width: 12,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ConatainerBuild())));
              },
              shape: const CircleBorder(),
              backgroundColor: color2,
              foregroundColor: mainbackground,
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
