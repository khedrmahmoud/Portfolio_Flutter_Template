import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kh_web_site/homepage/components/AppBarComp.dart';
import 'package:kh_web_site/homepage/components/states.dart';
import 'package:scroll_to_id/scroll_to_id.dart';
import 'Views/Section1.dart';
import 'Views/Section2.dart';
import 'Views/Section3.dart';
import 'Views/Section4.dart';
import 'components/BodyCompSection1.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controlPages = ScrollController();
    final scrollController = ScrollController(keepScrollOffset: true);
    /*ScrollToId scrollToId = ScrollToId(scrollController: scrollController);*/
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: Obx(
          () => Container(
            width: double.infinity,
            color: Colors.grey[200],
            padding: SetState.hgeaderPadding.value,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(text: "khedr"),
                Row(
                  children: [
                    NavText(
                        text: "Services",
                        nav: () {
                          scrollToId.jumpTo('S');
                        }),
                    NavText(
                        text: "Projects",
                        nav: () {
                          scrollToId.jumpTo('P');
                        }),
                    NavText(
                        text: "Contact",
                        nav: () {
                          scrollToId.jumpTo('C');
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/background.png',
            width: size.width,
            height: size.height - 50,
            fit: BoxFit.fill,
          ),
          InteractiveScrollViewer(
            scrollToId: scrollToId,
            children: [
              ScrollContent(
                id: 'H',
                child: Section1(size: size),
              ),
              ScrollContent(
                id: 'S',
                child: Services(size: size),
              ),
              ScrollContent(
                id: 'P',
                child: Projects(size: size),
              ),
              ScrollContent(
                id: 'C',
                child: Contact(size: size),
              ),
            ],
          )
        ],
      ),
    );
  }
}

/*
decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/OIP.jpg'), fit: BoxFit.fill),
            ),
 */
//**********************
/*Obx(
            () => SingleChildScrollView(
              reverse: SetState.revers.value,
              controller: controlPages,
              child: Column(
                children: [
                  Section1(size: size),
                  Services(size: size),
                  Projects(size: size),
                  Contact(size: size),
                ],
              ),
            ),
          ),*/
//**********************
/* print(controlPages.position.pixels);

                          SetState.revers.value = true;
                          controlPages.jumpTo(
                              80 size.height * 2 + SetState.PRheight.value );*/
//***********************
/* SetState.revers.value = false;
                          print(controlPages.position.pixels);
                          controlPages.jumpTo(2 * (size.height - 50));*/
//************************
/* print(controlPages.position.pixels);
                          SetState.revers.value = false;
                          controlPages.jumpTo(size.height - 50);*/
