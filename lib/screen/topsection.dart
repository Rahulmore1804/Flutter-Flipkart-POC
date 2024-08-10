import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/style.dart';

class TopSection extends StatelessWidget {


  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: () {
                      print("dnj");
                    },
                    child: (Text(
                      "Flipkart",
                      style: kLabelTextStyle,
                    ))),
              ),
              SizedBox(
                height: 35,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white38,
                    ),
                    onPressed: () {
                      print("dnj");
                    },
                    child: (Text(
                      "Grocery",
                      style: kLabelTextStyle1,
                    ))),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          color: Colors.white60,
          child: Row(
            children: [
              Column(
                children: [
                  Text("Brand Mall",style: kLabelTextStyle2,),
                  // CupertinoSwitch(  value: _switchValue,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _switchValue = value;
                  //     });
                  //   },)
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
