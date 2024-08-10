
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../pack/state.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  String email = "";
  Widget build(BuildContext context) {
    void _onLoading() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(child: new CircularProgressIndicator(),height: 70,width: 80,margin: EdgeInsets.fromLTRB(0, 20, 0, 0),),
                new Text("Loading", style: TextStyle(fontSize: 30,color: Colors.blue),),
              ],
            ),
          );
        },
      );
      new Future.delayed(new Duration(seconds: 3), () {
        GoRouter.of(context).pushNamed("pass");
      });
    }

    final width = MediaQuery.of(context).size.width;
    AppState provider = Provider.of<AppState>(context);
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
                      "Login for the best Experience",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  width: width,
                  // color: Colors.yellow,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(34, 20, 0, 0),
                  child: Text(
                    "Enter Your Email ID to continue",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                width: width,
                // color: Colors.yellow,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: width-68,
                      margin: EdgeInsets.fromLTRB(34,20,34, 0),
                      // color: Colors.pink,
                      child: TextField(
                        onChanged: (text) => setState(() {
                          email = text;
                        }),
                        decoration: InputDecoration(
                          hintText: "  Email id",
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
                    TextSpan(text: 'By continuing, you agree to Flipkart\'s', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

                    TextSpan(text: ' Term', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),

                    TextSpan(text: ' of Use and', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

                    TextSpan(text: ' Privacy Policy.`', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),

                  ]
              )
      )

    ),
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
                            onPressed: () async {
                              await provider.updateUSer(email);

                              _onLoading();
                              // GoRouter.of(context).pushNamed("pass");
                            },
                            child: Text(
                              "Continue",
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

