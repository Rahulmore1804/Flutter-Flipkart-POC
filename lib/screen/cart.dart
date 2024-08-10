
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';
import '../styles/style.dart';
import 'cardFormat.dart';
import 'cartcomponent/imageSlider.dart';
import 'cartcomponent/topsection2.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    void _updateIndex(int value) {
      if (value == 0) {
        GoRouter.of(context).pushNamed("profile");
      } else {
        GoRouter.of(context).pushNamed("cartproduct");
      }
    }

    AppState provider = Provider.of<AppState>(context);
    return MaterialApp(
      theme: ThemeData(fontFamily: "WorkSans"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: _updateIndex,
          currentIndex: 1,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'cart',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Material(
            child: Center(
              child: Column(
                children: [
                  // TopSection(),
                  TopSection2(),
                  ImageSlider1(),
                  Container(
                    color: Colors.white,
                    height: 140,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemCount: provider.list2.length,
                        itemBuilder: (context, index) {
                          return horiZontalListCompo(
                              a1: provider.list2[index]["pic"],
                              a2: provider.list2[index]["text1"]);
                        }),
                  ),
                  Cards1(
                    a11: provider.k1,
                    b11: "Deal of the DAY",
                  ),
                  Cards1(
                    a11: provider.k22,
                    b11: "Best Picks for You",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class horiZontalListCompo extends StatelessWidget {
  const horiZontalListCompo({
    Key? key,
    required this.a1,
    required this.a2,
  }) : super(key: key);
  final a1;
  final a2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 5, 0),
      child: InkWell(
        child: Column(children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(a1), fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
            child: Text(a2, ),
          )
        ]),
        onTap: () {
          print("tapped on container");
        },
      ),
    );
  }
}

// child: Text(a2, style: kLabelTextStyle2),

