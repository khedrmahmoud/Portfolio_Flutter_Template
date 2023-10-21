import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kh_web_site/homepage/components/states.dart';

Widget Logo({required String text}) {
  return Text(
    text.toUpperCase(),
    style: GoogleFonts.ibmPlexSansCondensed(
      textStyle: TextStyle(
          color: Colors.blue[900], fontWeight: FontWeight.w800, fontSize: 27),
    ),
  );
}

Widget NavText({required String text, nav()?}) {
  var controller = SetState();
  return InkWell(
    onHover: (v) {
      controller.hoverdisabled.value = v;
    },
    onTap: () {
      controller.hoverdisabled.value = true;
      nav!();
    },
    child: Obx(
      () => Padding(
        padding: SetState.NavPadding.value,
        child: Container(
          child: Column(
            children: [
              Text(
                text,
                style: GoogleFonts.ibmPlexSansCondensed(
                  textStyle: TextStyle(
                      color: controller.hoverdisabled.value
                          ? Colors.purpleAccent
                          : Colors.blue[900],
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              LayoutBuilder(builder: (context, con) {
                return AnimatedContainer(
                  color: Colors.deepPurple,
                  height: 3,
                  constraints: BoxConstraints(
                      maxWidth: controller.hoverdisabled.value ? 60 : 0,
                      minWidth: 0),
                  duration: Duration(milliseconds: 350),
                  curve: Curves.linearToEaseOut,
                );
              }),
            ],
          ),
        ),
      ),
    ),
  );
}
