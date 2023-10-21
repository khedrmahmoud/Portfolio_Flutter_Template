import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kh_web_site/homepage/components/states.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

Widget Header1() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text('Hello, I\'m Khedr ',
            style: GoogleFonts.ibmPlexSansCondensed(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 1.3 * 16,
                    fontWeight: FontWeight.w500))),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text('Software Engineer ',
            style: GoogleFonts.ibmPlexSansCondensed(
                textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 3 * 16,
                    fontWeight: FontWeight.w700))),
      ),
      Container(
        child: Text('I build android and ios apps using flutter',
            style: GoogleFonts.ibmPlexSansCondensed(
              textStyle: TextStyle(color: Colors.white, fontSize: 32),
            )),
      ),
    ],
  );
}

ScrollToId scrollToId = ScrollToId(scrollController: ScrollController());
Widget NaveButton() {
  var controller = SetState();
  return InkWell(
    onHover: (v) {
      controller.hoverdisabled.value = v;
    },
    onTap: () {
      scrollToId.jumpTo('P');
    },
    child: Obx(
      () => AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        margin: EdgeInsets.only(bottom: 40, top: 40),
        decoration: BoxDecoration(
            color: controller.hoverdisabled.value
                ? Colors.indigo[800] /*Colors.blueAccent[800]*/
                : Color(0xFF1263C0),
            borderRadius: BorderRadius.circular(15)),
        transform: controller.hoverdisabled.value
            ? Transform.scale(
                scale: 1.1,
              ).transform
            : Transform.scale(
                scale: 1,
              ).transform,
        duration: Duration(milliseconds: 700),
        curve: Curves.ease,
        child: Text('View my work',
            style: GoogleFonts.ibmPlexSansCondensed(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600))),
      ),
    ),
  );
}

Widget SocialsLinksWidget({double iconSize = 1.7 * 16, double spacing = 30}) {
  return Row(
    children: [
      icon(
        FontAwesomeIcons.linkedin,
        color: Colors.white,
        size: iconSize,
      ),
      SizedBox(
        width: spacing,
      ),
      icon(
        FontAwesomeIcons.github,
        color: Colors.white,
        size: iconSize,
      ),
      SizedBox(
        width: spacing,
      ),
      icon(
        FontAwesomeIcons.facebook,
        color: Colors.white,
        size: iconSize,
      ),
      SizedBox(
        width: spacing,
      ),
      icon(
        FontAwesomeIcons.youtube,
        color: Colors.white,
        size: iconSize,
      )
    ],
  );
}

Widget icon(IconData icon,
    {Color color = Colors.white, double size = 1.7 * 16}) {
  SetState controller = SetState();
  return InkWell(
    onTap: () {},
    onHover: (v) {
      controller.hoverdisabled.value = v;
    },
    child: Obx(
      () => Icon(
        icon,
        color: controller.hoverdisabled.value ? Colors.indigo : color,
        size: size,
      ),
    ),
  );
}
