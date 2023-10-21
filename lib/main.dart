import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage/components/states.dart';
import 'homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khedr Web Site',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Builder(builder: (context) {
        if (MediaQuery.of(context).size.width.toInt() <= 988) {
          SetState.hgeaderPadding.value =
              EdgeInsets.symmetric(vertical: 12, horizontal: 20);
          SetState.NavPadding.value = EdgeInsets.symmetric(horizontal: 7);
          SetState.sectionPadding.value =
              EdgeInsets.only(top: 80, bottom: 80, left: 20, right: 100);

          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 0.9,
              ),
              child: HomePage());
        }

        SetState.sectionPadding.value =
            EdgeInsets.symmetric(vertical: 100, horizontal: 200);
        SetState.NavPadding.value = EdgeInsets.symmetric(horizontal: 12);
        SetState.hgeaderPadding.value =
            EdgeInsets.symmetric(vertical: 10, horizontal: 200);
        return HomePage();
      }),
    );
  }
}
