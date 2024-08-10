
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  int k = 0;
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    String p = provider.content;
    String pp = provider.choosedproduct["name"];
    String pp1 = provider.choosedproduct["price"].toString();
    String pp2 = provider.choosedproduct["pic"];
    final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData(fontFamily: "WorkSans"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
        ),
        body: Container(
          height: 500,
          width: width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage(pp2), fit: BoxFit.fill),
                  ),
                ),
                Text(
                  "$pp",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black54),
                ),
                Text(
                  "Items :  $k",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black54),
                ),
                Text(
                  "₹ $pp1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black54),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              k = k + 1;
                            });
                            print(provider.cartofproduct);
                          },
                          child: Text(
                            " + ",
                            style: TextStyle(fontFamily: "WorkSans"),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              k = k - 1;
                            });
                          },
                          child: Text(" - ",
                              style: TextStyle(fontFamily: "WorkSans"))),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      // await provider.addToCart({"pro":pp,"nos":k});
                      await provider.addToCart([pp, k, pp1]);
                      GoRouter.of(context).pop();
                    },
                    child: Text(" Add To Cart "))
              ],
            ),
          ),
        ),
      ),
    );
  }
}