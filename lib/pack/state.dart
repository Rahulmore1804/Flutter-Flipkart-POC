
import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  String productname = "";
  int temp = 30;
  String user1 = "";
  String content = "";
  String content2 = "";
  dynamic productlist = [];
  updateContent(String r, String t, dynamic s) {
    this.content = r;
    this.content2 = t;
    this.productlist = s;
    notifyListeners();
    return true;
  }

  dynamic cartofproduct = [];
  addToCart(dynamic r) {
    this.cartofproduct = [...this.cartofproduct, r];
  }

  editCart(dynamic r, int e) {
    this.cartofproduct[e] = r;
  }

  updateUSer(String r) {
    this.user1 = r;
    notifyListeners();
    return true;
  }

  dynamic choosedproduct = {};
  choosedproduct1(dynamic ss) {
    this.choosedproduct = ss;
  }

  final titles = [
    'images/s1.png',
    'images/s2.png',
    'images/s3.png',
    'images/s1.png',
    'images/s2.png',
    'images/s3.png'
  ];
  final k22 = [
    {
      "pic": "images/k4.jpg",
      "text1": "shoes",
      "text2": "25 % off",
      "text3": "BATA, NIKE",
      "allproducts": [
        {"name": "Campus", "price": 788, "pic": "images/shoes1.webp"},
        {"name": "Nike air", "price": 678, "pic": "images/shoes2.webp"},
        {"name": "Bata sport", "price": 920, "pic": "images/shoes3.webp"},
        {"name": "Sparx", "price": 1220, "pic": "images/shoes4.webp"},
      ]
    },
    {
      "pic": "images/k3.jpg",
      "text1": "Clocks",
      "text2": "60% off",
      "text3": "Titan, fasttrack",
      "allproducts": [
        {"name": "fasttrace ", "price": 1188, "pic": "images/watch1.webp"},
        {"name": "titan air", "price": 1278, "pic": "images/watch2.webp"},
        {"name": "casio sport", "price": 1420, "pic": "images/watch3.webp"},
        {"name": "casio sport", "price": 1220, "pic": "images/watch4.webp"}
      ]
    },
  ];
  final k2 = [
    {
      "pic": "images/k4.jpg",
      "text1": "shoes",
      "text2": "25 % off",
      "text3": "BATA, NIKE",
      "allproducts": ["fasttrack 213", "Nike air", "Bata sport"]
    },
    {
      "pic": "images/k3.jpg",
      "text1": "Clocks",
      "text2": "60% off",
      "text3": "Titan, fasttrack",
      "allproducts": ["wrist watch", "digital clock", "titan a1"]
    },
  ];
  final k1 = [
    {
      "pic": "images/k1.jpg",
      "text1": "Footwear",
      "text2": "40% off",
      "text3": "sparx, Adda",
      "allproducts": [
        {"name": "paragone ", "price": 188, "pic": "images/ch1.webp"},
        {"name": "vita", "price": 728, "pic": "images/ch2.webp"},
        {"name": "relexo", "price": 320, "pic": "images/ch3.webp"},
        {"name": "rally", "price": 420, "pic": "images/ch4.webp"}
      ]
    },
    {
      "pic": "images/k2.jpg",
      "text1": "Gym",
      "text2": "75 % off",
      "text3": "best Price",
      "allproducts": [
        {"name": "bar ", "price": 588, "pic": "images/gym1.webp"},
        {"name": "weight ", "price": 678, "pic": "images/gym2.webp"},
        {"name": "stick", "price": 630, "pic": "images/gym3.webp"},
        {"name": "wjfgrnf", "price": 1230, "pic": "images/gym4.webp"},
      ]
    },
  ];
  final list2 = [
    {"pic": 'images/app.jpg', "text1": "Appliances"},
    {"pic": 'images/offer.jpg', "text1": "Top Offers"},
    {"pic": 'images/Electronics.jpg', "text1": "Electronics"},
    {"pic": 'images/fashion.jpg', "text1": "Clothing"},
    {"pic": 'images/Grocery.jpg', "text1": "Grocery"},
    {"pic": 'images/mobile.jpg', "text1": "mobiles"},
    {"pic": 'images/plane.jpg', "text1": "Toys"},
    {"pic": 'images/Grocery.jpg', "text1": "Grocery"},
    {"pic": 'images/mobile.jpg', "text1": "mobiles"},
    {"pic": 'images/plane.jpg', "text1": "Toys"},
  ];
}

//
// class AppState extends ChangeNotifier {
//   int temp = 30;
//
//   void updateTemp(int temp1) {
//     this.temp = temp1 + this.temp;
//     notifyListeners();
//   }
//  String user1 = "";
//
//    updateUSer(String r){
//     this.user1 = r;
//     notifyListeners();
//     return true;
//   }
//
//
//
//
//
//
//   ///Provider working with Rest Api
//   List<Map<String , String>> dataList = [
//     {"name": "ffd", "password": "srrr"},
//   ];
//   List<dynamic> userlist = [
//     {"name": "Rahul", "email": "rahulemail","password":"rahulpassword"},
//     {"name": "Rahulq", "email": "rahucedclemail","password":"rahulwedpassword"},
//     {"name": "Rahuld", "email": "rahuecclemail","password":"rahultgtrgtrpassword"},
//     {"name": "Rahuldw", "email": "rahucwcclemail","password":"rahulpaedwessword"},
//   ];
//
//   void updatelist(k, l) {
//     Map <String , String >n = {"name": k, "password": l};
//     print(k);
//     this.dataList = [...dataList, n];
//     notifyListeners();
//   }
//   void updateuserlist(String? k, String? l,String? t) {
//     Map n = {"name": k, "email": l,"password" : t};
//
//     this.userlist = [...userlist, n];
//     notifyListeners();
//   }
// }