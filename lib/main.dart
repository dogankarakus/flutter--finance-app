import 'package:finance_app_1/screens/bottomNavbar.dart';
import 'package:finance_app_1/screens/homescreen.dart';
import 'package:finance_app_1/screens/moneysent.dart';
import 'package:finance_app_1/screens/onboarding_2.dart';
import 'package:finance_app_1/screens/sendmoney.dart';
import 'package:finance_app_1/screens/statistics.dart';
import 'package:finance_app_1/screens/transactions.dart';
import 'package:finance_app_1/screens/wallet_1.dart';
import 'package:flutter/material.dart';

import 'screens/onboarding_1.dart';
import 'screens/wallet_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: OnBoarding1(),
    );
  }
}
