import 'package:flutter/material.dart';
import 'package:omar0522005/Provider/login_provider.dart';
import 'package:omar0522005/Provider/product_provider.dart';
import 'package:omar0522005/Provider/signup_provider.dart';
import 'package:omar0522005/Screens/login_screen.dart';
import 'package:omar0522005/Screens/product_screen.dart';
import 'package:omar0522005/Screens/signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context)=> SignUpProvider()),
          ChangeNotifierProvider(create: (context)=> LoginProvider()),
          ChangeNotifierProvider(create:(context) => ProductProvider())
        ],

      child: MaterialApp(
        home: ProductScreen(),
        debugShowCheckedModeBanner: false,
      )
      );

  }
}