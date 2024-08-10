
import 'package:flutter/material.dart';

import '../../styles/style.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [
      {
        "pic": "images/k1.jpg",
        "text1": "Footwear",
        "text2": "40% off",
        "text3": "sparx, Adda"
      },
      {"pic": "images/k2.jpg", "text1": "Gym", "text2": "75 % off", "text3": "best Price","allproducts":["a1","a2","a3"]},
      {"pic": "images/k3.jpg", "text1": "shoes", "text2": "25 % off", "text3": "BATA, NIKE","allproducts":["as1","as2","as3"]},
      {"pic": "images/k4.jpg", "text1": "Clocks", "text2": "60% off", "text3": "Titan, fasttrack","allproducts":["a15","a25","a35"]},
    ];
    final width = MediaQuery.of(context).size.width;
    return Material(

      child: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                "Best Picks",
                style: TextStyle(fontSize: 32),
              ),
              // Container(
              //
              //   width: width,
              //   height: 3300,
              //   child: GridView.count(
              //     // Create a grid with 2 columns. If you change the scrollDirection to
              //     // horizontal, this produces 2 rows.
              //     crossAxisCount: 2,
              //     // Generate 100 widgets that display their index in the List.
              //     children: List.generate(4, (index) {
              //       return cardsWidget(
              //         a1: list[index]["pic"],a2: "Clocks",a3:"Titan, fasttrack" ,a4: "ebdjn",
              //       );
              //     }),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cardsWidget(
                    a1: "images/k1.jpg",a2: "Clocks",a3:"Titan, fasttrack" ,a4: "ebdjn",
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: InkWell(
                      child: Column(children: [
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage('images/k2.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("Gym", style: kLabelTextStyle2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("75 % off", style: kLabelTextStyle2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("best Price", style: kLabelTextStyle2),
                        ),
                      ]),
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: InkWell(
                      child: Column(children: [
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage('images/k4.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("shoes", style: kLabelTextStyle2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("25 % off", style: kLabelTextStyle2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("BATA, NIKE", style: kLabelTextStyle2),
                        ),
                      ]),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: InkWell(
                      child: Column(children: [
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage('images/k3.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("Clocks", style: kLabelTextStyle2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child: Text("60% off", style: kLabelTextStyle2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                          child:
                              Text("Titan, fasttrack", style: kLabelTextStyle2),
                        ),
                      ]),
                      onTap: () {},
                    ),
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
  const cardsWidget({Key?key,
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
  }):super(key:key);
  final dynamic a1;
  final dynamic a2;
  final dynamic a3;
  final dynamic a4;

  @override
  Widget build(BuildContext context) {
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
                image: DecorationImage(
                    image: AssetImage(a1),
                    fit: BoxFit.fill),
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
          onTap: () {},
        ),
      ),
    );
  }
}
