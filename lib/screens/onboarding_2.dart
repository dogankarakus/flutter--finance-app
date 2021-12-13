// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'onboarding_3.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  _OnBoarding2State createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
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
                  'lib/assets/onboarding2.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image(image: AssetImage("lib/assets/onboarding2_progress.png")),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  height: 45,
                  child: Text(
                    "Check your wallet",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 60,
                child: Text(
                  "Manage your money and invest with just one tap!",
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
                                  builder: (context) => OnBoarding3()));
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
