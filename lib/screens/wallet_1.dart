import 'package:finance_app_1/screens/bottomNavbar.dart';
import 'package:finance_app_1/screens/mainappbar.dart';
import 'package:flutter/material.dart';

import 'wallet_2.dart';

class Wallet1 extends StatefulWidget {
  const Wallet1({Key? key}) : super(key: key);

  @override
  _Wallet1State createState() => _Wallet1State();
}

class _Wallet1State extends State<Wallet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MainAppBar("Your Wallet"),
        floatingActionButton: FloatingActionButton(
          heroTag: "btn1",
          backgroundColor: Color(0xff91D7E0),
          foregroundColor: Color(0xff6F6CD9),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Wallet2()));
          },
          child:
              ImageIcon(AssetImage("lib/assets/floatingactionbuttonadd.png")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("lib/assets/wallet1empty.png"),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  "Add your credit or debit cards to have access all the time",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ));
  }
}
