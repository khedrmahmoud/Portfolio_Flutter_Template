import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive/responsive_row.dart';

import '../components/BodyCompSection2.dart';

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: size.height - 50),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Services',
            style: GoogleFonts.ibmPlexSansCondensed(
              textStyle: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w800,
                  fontSize: 2.2 * 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ResponsiveRow(
            children: [
              CardItem(
                  icon: FontAwesomeIcons.edit,
                  title: 'Apps Development',
                  titleColor: Colors.blue[900],
                  description:
                      'Creating Android and iOS applications using Flutter ,Creating Android Native Apps using java'),
              CardItem(
                  titleColor: Colors.blue[900],
                  icon: FontAwesomeIcons.gamepad,
                  title: 'Games Development',
                  description:
                      'Designing 3D and 2D Games using Unity Game Engine\n          '),
              CardItem(
                  titleColor: Colors.blue[900],
                  icon: FontAwesomeIcons.drawPolygon,
                  title: 'modeling',
                  description:
                      'Designing 3D models and character models using Blender \n    '),
            ],
          ),
        ],
      ),
    );
  }
}
