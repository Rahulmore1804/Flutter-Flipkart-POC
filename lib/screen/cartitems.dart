
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';

class Cartitems extends StatefulWidget {
  const Cartitems({Key? key}) : super(key: key);

  @override
  State<Cartitems> createState() => _CartitemsState();
}

class _CartitemsState extends State<Cartitems> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "WorkSans"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Joint(),
        appBar: AppBar(
          title: Text("cart"),
        ),
      ),
    );
  }
}

class Joint extends StatefulWidget {
  const Joint({Key? key}) : super(key: key);

  @override
  State<Joint> createState() => _JointState();
}

class _JointState extends State<Joint> {
  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    dynamic p = provider.cartofproduct;
    converter(String l, String w) {
      int a1 = int.parse(l) * int.parse(w);
      return a1.toString();
    }

    findtotal(var k) {
      var oo = 0;
      var list1 = [...k];
      var i = 0;
      for (i; i < list1.length; i++) {
        int wwe = int.parse(list1[i][2]);
        int k = list1[i][1];
        int m = k * wwe;
        oo = oo + m;
      }
      return oo;
    }

    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text("Items in cart",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
              child: Row(children: [
                Container(
                  width: 200,
                  // padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
                  child: Text(
                    "product",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
                  child: Text(
                    "Price",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  "      Nos",
                  style: TextStyle(fontSize: 20),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                  itemCount: p.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                  //                   <--- right side
                                  color: Colors.black,
                                  width: 3.0,
                                ),
                              )),
                              width: 150,
                              child: Text(
                                p[index][0],
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                  //                   <--- right side
                                  color: Colors.black,
                                  width: 3.0,
                                ),
                              )),
                              width: 80,
                              child: Text(
                                converter(p[index][2], p[index][1].toString()),
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            width: 80,
                            child: Text(
                              p[index][1].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: SizedBox(
                              width: 40,
                              child: ElevatedButton(
                                onPressed: () async {
                                  dynamic dummy = [...p];
                                  int r = dummy[index][1] + 1;
                                  await provider.editCart(
                                      [dummy[index][0], r, dummy[index][2]],
                                      index);
                                  print(p);
                                  setState(() {});
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            child: ElevatedButton(
                              onPressed: () async {
                                dynamic dummy = [...p];
                                int r = dummy[index][1] - 1;
                                await provider.editCart(
                                    [dummy[index][0], r, dummy[index][2]],
                                    index);
                                print(p);
                                setState(() {});
                              },
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Text(
              "Total Amount",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              findtotal(p).toString(),
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Submit Order"))
          ],
        ),
      ),
    );
  }
}