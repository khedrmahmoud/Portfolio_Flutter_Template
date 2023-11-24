import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive/responsive_row.dart';

import '../components/BodyCompSection1.dart';
import '../components/BodyCompSection2.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          constraints: BoxConstraints(minHeight: size.height - 50),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Let\'s work together',
                style: GoogleFonts.ibmPlexSansCondensed(
                  textStyle: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w900,
                      fontSize: 2.2 * 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ResponsiveRow(
                children: [
                  CardItem(
                      icon: FontAwesomeIcons.phone,
                      title: 'Phone',
                      description: '',
                      iconSize: 4.5 * 16,
                      descriptionsize: 1.5 * 16,
                      titleColor: Colors.black),
                  CardItem(
                      icon: FontAwesomeIcons.envelopeCircleCheck,
                      title: 'Email',
                      description: '',
                      iconSize: 4.5 * 16,
                      descriptionsize: 1.5 * 16,
                      titleColor: Colors.black),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 90,
          padding: EdgeInsets.all(2 * 16),
          color: Color.fromRGBO(0, 0, 24, 1),
          child: Row(
            children: [
              Text('Copyright @',
                  style: GoogleFonts.ibmPlexSansCondensed(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 1.3 * 16,
                          fontWeight: FontWeight.w600))),
              Text(' Khedr Mahmoud',
                  style: GoogleFonts.ibmPlexSansCondensed(
                      textStyle: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 16,
                          fontWeight: FontWeight.w600))),
              Spacer(),
              SocialsLinksWidget(iconSize: 1.4 * 16, spacing: 20),
            ],
          ),
        ),
      ],
    );
  }
}
