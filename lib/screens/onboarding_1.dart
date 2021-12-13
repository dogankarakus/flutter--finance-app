// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finance_app_1/screens/onboarding_2.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  _OnBoarding1State createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Financy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'lib/assets/onboarding1.png',
                  fit: BoxFit.cover,
                ),
              ),
              //Image(image: AssetImage("lib/assets/onboarding1.png")),
              SizedBox(
                height: 30,
              ),
              Image(image: AssetImage("lib/assets/onboarding1_progress.png")),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  height: 45,
                  child: Text(
                    "Save Money",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 210,
                height: 60,
                child: Text(
                  "Have all your finances in one place!",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                child: Column(
                  children: [
                    SizedBox(
                      width: 310,
                      height: 55,
                      child: FlatButton(
                        color: Color(0xff6F6CD9),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoarding2()));
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
