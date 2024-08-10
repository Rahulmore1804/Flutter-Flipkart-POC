import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'pack/routes.dart';
import 'pack/state.dart';

// void main() {
//   return runApp(MaterialApp.router(
//     debugShowCheckedModeBanner: false,
//     routeInformationParser: MyAppRouter().router.routeInformationParser,
//     routerDelegate: MyAppRouter().router.routerDelegate,
//   ));
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: MyAppRouter().router.routeInformationParser,
        routerDelegate: MyAppRouter().router.routerDelegate,
      ),
    );
  }
}
