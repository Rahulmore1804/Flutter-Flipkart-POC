import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';

class Allproduct extends StatefulWidget {
  const Allproduct({Key? key}) : super(key: key);

  @override
  State<Allproduct> createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {
  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    String p = provider.content;
    String p2 = provider.content2;
    dynamic p3 = provider.productlist;
    final width = MediaQuery.of(context).size.width;
    // dynamic p3= [
    // {"name": "fasttrace 213", "price": 1188},
    // {"name": "titan air", "price": 1278},
    // {"name": "casio sport", "price": 3420}
    // ];
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Product List"),),
      body: SingleChildScrollView(
        child: Container(
          height: 3000,
          width: width,
          child: Column(
            children: [
              Container(
                height: 800,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  // crossAxisCount is the number of columns
                  crossAxisCount: 2,
                  // This creates two columns with two items in each column
                  children: List.generate(p3.length, (index) {
                    return Container(
                      color: Colors.white30,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            height: 110,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(image: AssetImage(p3[index]["pic"]), fit: BoxFit.fill),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                            alignment: Alignment.center,
                            width: 200,
                            child: Text(
                              p3[index]["name"],
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                            alignment: Alignment.center,
                            width: 200,
                            child: Text("₹ " +
                              p3[index]["price"].toString(),
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: ElevatedButton(
                                onPressed: () {  provider.choosedproduct1(p3[index]);
                                GoRouter.of(context).pushNamed("product");
                                },
                                child: Text(
                                  "Buy",
                                  style: TextStyle(fontSize: 19),
                                )),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
