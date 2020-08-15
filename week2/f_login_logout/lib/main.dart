//import 'dart:js';

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:floginlogout/screens/login_view.dart';
import 'package:floginlogout/screens/register_view.dart';
import 'package:floginlogout/screens/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      "/":(context)=>LoginPage(),
      RegisterPage.routeName:(context)=>RegisterPage(),
      HomePage.routeName:(context)=>HomePage(),
    },
  ),
  );
}

