

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';
import '../styles/style.dart';

class Cards1 extends StatelessWidget {
  const Cards1({
    Key? key,
    required this.a11,
    required this.b11,
  }) : super(key: key);

  final dynamic a11;
  final dynamic b11;

  @override
  Widget build(BuildContext context) {
    final list = [
      {
        "pic": "images/k1.jpg",
        "text1": "Footwear",
        "text2": "40% off",
        "text3": "sparx, Adda"
      },
      {
        "pic": "images/k2.jpg",
        "text1": "Gym",
        "text2": "75 % off",
        "text3": "best Price"
      },
      {
        "pic": "images/k3.jpg",
        "text1": "shoes",
        "text2": "25 % off",
        "text3": "BATA, NIKE"
      },
      {
        "pic": "images/k4.jpg",
        "text1": "Clocks",
        "text2": "60% off",
        "text3": "Titan, fasttrack"
      },
    ];
    final width = MediaQuery.of(context).size.width;
    AppState provider = Provider.of<AppState>(context);
    return Material(
      child: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text(
                  b11,
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cardsWidget(
                    a1: a11[0]["pic"],
                    a2: a11[0]["text1"],
                    a3: a11[0]["text2"],
                    a4: a11[0]["text3"],
                    a5: a11[0]["allproducts"],
                  ),
                  cardsWidget(
                    a1: a11[1]["pic"],
                    a2: a11[1]["text1"],
                    a3: a11[1]["text2"],
                    a4: a11[1]["text3"],
                    a5: a11[1]["allproducts"],
                  ),
                ],
              ),
            ],
          ),
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}

class cardsWidget extends StatelessWidget {
  const cardsWidget({
    Key? key,
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
    required this.a5,
  }) : super(key: key);
  final dynamic a1;
  final dynamic a2;
  final dynamic a3;
  final dynamic a4;
  final dynamic a5;

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return Padding(
      padding: EdgeInsets.all(9),
      child: Container(
        child: InkWell(
          child: Column(children: [
            Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: AssetImage(a1), fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
              child: Text(a2, style: kLabelTextStyle2),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
              child: Text(a3, style: kLabelTextStyle2),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
              child: Text(a4, style: kLabelTextStyle2),
            ),
          ]),
          onTap: () async {
            await provider.updateContent(a2, a1, a5);
            GoRouter.of(context).pushNamed("allproducts");
          },
        ),
      ),
    );
  }
}
