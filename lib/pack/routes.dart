
import '../screen/allproduct.dart';
import '../screen/cart.dart';
import '../screen/cartitems.dart';
import '../screen/demo.dart';
import '../screen/email.dart';
import '../screen/pass.dart';
import '../screen/product.dart';
import '../screen/profile.dart';
import '../screen/splash.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../screen/cartitems.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: "cartproduct",
        path: '/cartproduct',
        pageBuilder: (context, state) {
          return MaterialPage(child: Cartitems());
        },
      ),
      GoRoute(
        name: "pass",
        path: '/pass',
        pageBuilder: (context, state) {
          return MaterialPage(child: Pass());
        },
      ),
      GoRoute(
        name: "profile",
        path: '/profile',
        pageBuilder: (context, state) {
          return MaterialPage(child: Profile());
        },
      ),
      GoRoute(
        name: "demo",
        path: '/demo',
        pageBuilder: (context, state) {
          return MaterialPage(child: Demo());
        },
      ),
      GoRoute(
        name: "allproducts",
        path: '/allproducts',
        pageBuilder: (context, state) {
          return MaterialPage(child: Allproduct());
        },
      ),
      GoRoute(
        name: "splash",
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(child: Splash());
        },
      ),
      GoRoute(
        name: "email",
        path: '/email',
        pageBuilder: (context, state) {
          return MaterialPage(child: Email());
        },
      ),
      GoRoute(
        name: "cart",
        path: '/cart',
        pageBuilder: (context, state) {
          return MaterialPage(child: Cart());
        },
      ),
      GoRoute(
        name: "product",
        path: '/product',
        pageBuilder: (context, state) {
          return MaterialPage(child: Product());
        },
      ),
    ],
  );
}
