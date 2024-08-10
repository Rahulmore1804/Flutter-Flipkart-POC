
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../styles/style.dart';

class TopSection2 extends StatefulWidget {
  const TopSection2({Key? key}) : super(key: key);
  @override
  State<TopSection2> createState() => _TopSection2State();
}

class _TopSection2State extends State<TopSection2> {
  @override
  bool _switchValue = true;
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 24, 0, 0),

            height: 60,
            color: Colors.white30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 35,
                  width: 150,
                  child: Row(children: [
                    // ElevatedButton.icon(icon: Icon(Icons.confirmation_num_sharp),onPressed:(){} ,label: Text('Elevated Button'),),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {
                        GoRouter.of(context).pushNamed("cartproduct");
                      },
                      label: Text(
                        'Flipkart',
                        style: kLabelTextStyle,
                      ),
                      icon: Icon(Icons.flight),
                    )
                  ]),
                ),
                SizedBox(
                  height: 35,
                  width: 150,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white38,
                      ),
                      onPressed: () {
                        GoRouter.of(context).pushNamed("cartproduct");
                      },
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Cart",
                        style: kLabelTextStyle1,
                      )),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            color: Colors.white60,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30, 5, 0, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Brand Mall",
                        style: kLabelTextStyle2,
                      ),
                      SizedBox(
                        width: 70,
                        height: 30,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: CupertinoSwitch(
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  width: 300,
                  child: Flexible(
                    child: TextField(
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mic),
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.blueGrey), //<-- SEE HERE
                        ),
                        hintText: "Search for products",
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}




