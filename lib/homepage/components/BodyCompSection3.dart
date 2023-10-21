import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kh_web_site/homepage/components/states.dart';

Widget Project_card(
    {required String image, required String category, required String title}) {
  var controller = SetState();
  return InkWell(
    onHover: (v) {
      controller.hoverdisabled.value = v;
    },
    onTap: () {},
    child: Obx(
      () => AnimatedContainer(
        width: 23 * 16,
        constraints: BoxConstraints(minHeight: 14 * 16),
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 2.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Container(
                height: 190,
                width: 23 * 16,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    opacity: controller.hoverdisabled.value ? 0.9 : 1,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                category,
                style: GoogleFonts.ibmPlexSansCondensed(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 1 * 16),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title.toUpperCase(),
                    style: GoogleFonts.ibmPlexSansCondensed(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 1 * 16),
                    ),
                  ),
                  moreDetails(),
                ],
              ),
            ),
          ],
        ),
        curve: Curves.easeIn,
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

Widget moreDetails() {
  var controller = SetState();
  return InkWell(
    onHover: (v) {
      controller.hoverdisabled.value = v;
    },
    onTap: () {},
    child: Obx(
      () => Text(
        'More details'.toUpperCase(),
        style: GoogleFonts.ibmPlexSansCondensed(
          textStyle: TextStyle(
              color: controller.hoverdisabled.value
                  ? Colors.purpleAccent
                  : Colors.blue[900],
              fontWeight: FontWeight.w800,
              fontSize: 0.9 * 16),
        ),
      ),
    ),
  );
}
