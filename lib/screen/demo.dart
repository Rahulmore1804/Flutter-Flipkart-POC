

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    String p = provider.content;
    String p2 = provider.content2;
    dynamic p3 = provider.productlist;
    return MaterialApp(
      theme: ThemeData(fontFamily: "WorkSans"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(p)),
        body: Scaffold(
          body: Column(children: [
            Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: AssetImage(p2), fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
              child: Text(p, style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.black)),

            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width:200,
                    child: Text("Product"
                        ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    width:100,
                    child: Text("Price"
                        ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    width:100,
                    child: Text(""
                        ,style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: p3.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width:200,
                          child: Text(
                            p3[index]["name"],
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          width : 100,
                          child: Text(
                            p3[index]["price"].toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          width:100,
                          child: ElevatedButton(
                              onPressed: () {
                                provider.choosedproduct1(p3[index]);
                                GoRouter.of(context).pushNamed("product");
                              },
                              child: Text("Buy")),
                        )
                      ],
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}