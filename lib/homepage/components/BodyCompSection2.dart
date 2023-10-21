import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kh_web_site/homepage/components/states.dart';

Widget CardItem({
  required IconData icon,
  required String title,
  required String description,
  double iconSize = 8 * 16,
  var titleColor = Colors.blue,
  double descriptionsize = 16,
}) {
  var controller = SetState();
  return InkWell(
    onHover: (v) {
      controller.hoverdisabled.value = v;
    },
    onTap: () {},
    child: Obx(
      () => AnimatedContainer(
        width: 19 * 16,
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5),
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: iconSize,
              color: Colors.blue[900],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: GoogleFonts.ibmPlexSansCondensed(
                textStyle: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 1.2 * 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: GoogleFonts.ibmPlexSansCondensed(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: descriptionsize),
              ),
            ),
          ],
        ),
        duration: Duration(milliseconds: 500),
        transform: controller.hoverdisabled.value
            ? Transform.scale(
                scale: 1.05,
              ).transform
            : Transform.scale(
                scale: 1,
              ).transform,
      ),
    ),
  );
}
