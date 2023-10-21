import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/BodyCompSection1.dart';
import '../components/states.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        // height: size.height,
        alignment: Alignment.center,
        constraints: BoxConstraints(minHeight: size.height - 50),
        padding: SetState.sectionPadding.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header1(),
            NaveButton(),
            SocialsLinksWidget(),
          ],
        ),
      ),
    );
  }
}
