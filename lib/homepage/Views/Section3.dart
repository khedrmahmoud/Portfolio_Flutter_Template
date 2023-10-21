import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kh_web_site/homepage/components/states.dart';
import 'package:responsive/responsive_row.dart';

import '../components/BodyCompSection3.dart';

class Projects extends StatelessWidget {
  Projects({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: size.height - 50),
      color: Color.fromRGBO(0, 0, 24, 1),
      child: LayoutBuilder(builder: (context, size) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Projects',
              style: GoogleFonts.ibmPlexSansCondensed(
                textStyle: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w800,
                    fontSize: 2.2 * 16),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ResponsiveRow(
                columnsCount: 12,
                children: list,
              ),
            ),
          ],
        );
      }),
    );
  }
}

List<Widget> list = [
  Project_card(
      image: 'images/translator.png',
      category: 'App Development',
      title: 'Translator'),
  Project_card(
      image: 'images/todo.png',
      category: 'App Development',
      title: 'Tasks App'),
  Project_card(
      image: 'images/snap.png',
      category: 'App Development',
      title: 'Snapchat clone'),
  Project_card(
      image: 'images/anasheed.png',
      category: 'App Development',
      title: 'anasheed Ramadan App'),
  Project_card(
      image: 'images/shop1.png',
      category: 'App Development',
      title: 'Shop App'),
  Project_card(
      image: 'images/snak.png',
      category: 'Games Development',
      title: 'Snak Game '),
];
