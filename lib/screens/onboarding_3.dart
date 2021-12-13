// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'bottomNavbar.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  _OnBoarding3State createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
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
                  'lib/assets/onboarding3.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image(image: AssetImage("lib/assets/onboarding3_progress.png")),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 300,
                  height: 45,
                  child: Text(
                    "Have access anywhere!",
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
                  "Reach your financial goal within your first year!",
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
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Home()));
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
