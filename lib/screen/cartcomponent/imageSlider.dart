
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:provider/provider.dart';

import '../../pack/state.dart';

class ImageSlider1 extends StatefulWidget {
  const ImageSlider1({Key? key}) : super(key: key);
  @override
  State<ImageSlider1> createState() => _ImageSlider1State();
}

class _ImageSlider1State extends State<ImageSlider1> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    Timer mytimer = Timer.periodic(Duration(seconds: 11), (timer) {
      Future.delayed(const Duration(seconds: 1), () async {
        await scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 8000),
            curve: Curves.linear);
        print("Called");
        // scrollController.jumpTo(scrollController.position.minScrollExtent);
        await scrollController.animateTo(
          scrollController.position.minScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
        );
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   AppState provider = Provider.of<AppState>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            height: 140,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                controller: scrollController,

                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
                itemCount: provider.titles.length,
                itemBuilder: (context, index) {
                  return imageofslider(a1: provider.titles[index]);
                }),
          ),
        ],
      ),
    );
  }
}

class imageofslider extends StatelessWidget {
  const imageofslider({
   Key?key,
    required this.a1,
  }):super(key:key);

  final String a1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Image.asset(
        a1,
        height: 230,
        fit: BoxFit.fitWidth,
      ),
      onTap: () {
        print("tapped on container");
      },
    );
  }
}

// style.dart
// import 'package:flutter/material.dart';
//
// import '../../pack/state.dart';
// const kLabelTextStyle = TextStyle(
//   fontSize: 20.0,
//   // color: Color(0xFFEB1555),
//   fontFamily: 'Source Sans Pro',
//   color: Colors.white,
//   // fontSize: 20,
//   letterSpacing: 1.5,
//   fontWeight: FontWeight.bold,
//   backgroundColor: Colors.white10
// );
// const kLabelTextStyle1 = TextStyle(
//     fontSize: 20.0,
//     // color: Color(0xFFEB1555),
//     fontFamily: 'Source Sans Pro',
//     color: Colors.black,
//     // fontSize: 20,
//     letterSpacing: 1.5,
//     fontWeight: FontWeight.bold,
//     backgroundColor: Colors.white10
// );
// const kLabelTextStyle2 = TextStyle(
//     fontSize: 15.0,
//     // color: Color(0xFFEB1555),
//     fontFamily: 'Source Sans Pro',
//     color: Colors.black,
//     fontWeight: FontWeight.bold,
//
//
// );
