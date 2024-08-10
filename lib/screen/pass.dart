
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';

class Pass extends StatefulWidget {
  const Pass({Key? key}) : super(key: key);
  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
  @override
  String pass = "";
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    void _onLoading() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: new CircularProgressIndicator(),
                  height: 70,
                  width: 80,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
                new Text(
                  "Loading",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ],
            ),
          );
        },
      );
      new Future.delayed(new Duration(seconds: 3), () {
        GoRouter.of(context).pushNamed("cart");
      });
    }

    void _onLoading1() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: new CircularProgressIndicator(),
                  height: 70,
                  width: 80,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
                new Text(
                  "Loading",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ],
            ),
          );
        },
      );
      new Future.delayed(new Duration(seconds: 3), () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Alert!'),
            content: const Text('Varification code is wrong !'),
            actions: <Widget>[
              TextButton(
                onPressed: () => GoRouter.of(context).pushNamed("pass"),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => GoRouter.of(context).pushNamed("pass"),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      });
    }

    AppState provider = Provider.of<AppState>(context);
    String p = provider.user1;
    return MaterialApp(
      theme: ThemeData(fontFamily: "WorkSans"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Flipkart"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.perm_camera_mic_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      "Please enter the varification code",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  width: width,
                  // color: Colors.yellow,
                ),
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(34, 20, 34, 0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 25), //apply style to all
                            children: [
                          TextSpan(
                              text: 'We have sent on Email ID ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' $p',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 30))
                        ]))),
                width: width,
                // color: Colors.yellow,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: width - 68,
                      margin: EdgeInsets.fromLTRB(34, 20, 34, 0),
                      // color: Colors.pink,
                      child: TextField(
                        onChanged: (text) => setState(() {
                          pass = text;
                        }),
                        decoration: InputDecoration(
                          hintText: "  Varifaction Code",
                          hintStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Colors.blue), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(34, 20, 34, 0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 20), //apply style to all
                            children: [
                          TextSpan(
                              text: 'By continuing, you agree to Flipkart\'s',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' Term',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                          TextSpan(
                              text: ' of Use and',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' Privacy Policy.`',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ]))),
                width: width,
                // color: Colors.yellow,
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              print(pass);
                              if (pass == "123456") {
                                _onLoading();
                              } else {
                                _onLoading1();
                              }
                            },
                            child: Text(
                              "Varify",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
