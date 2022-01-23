
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

import 'package:better_buyers/screens/seller_screen.dart';
import 'package:better_buyers/screens/product_screen.dart';

void main() =>  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
      routes: {
        SellerScreen.routeName:(_) => SellerScreen(),
        ProductScreen.routeName:(_) => ProductScreen(),
      },
    );
  }
}

