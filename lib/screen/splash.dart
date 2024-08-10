import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pack/state.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
   Future.delayed(const Duration(seconds: 3), () async {
     GoRouter.of(context).pushNamed("email");
   });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hie = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: hie,
        width: width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/Flipkart-Logo.png',
              width: width-40,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}


