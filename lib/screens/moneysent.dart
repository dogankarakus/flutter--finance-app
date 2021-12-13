import 'package:finance_app_1/screens/sendmoney.dart';
import 'package:flutter/material.dart';

import 'bottomNavbar.dart';
import 'homescreen.dart';

class MoneySent extends StatefulWidget {
  final String textReason;
  final String textAmount;
  const MoneySent(
      {Key? key, required this.textReason, required this.textAmount})
      : super(key: key);

  @override
  _MoneySentState createState() => _MoneySentState();
}

class _MoneySentState extends State<MoneySent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height - 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 8,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(0xffD0F1EB),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              icon: Image(
                                image: AssetImage(
                                    "lib/assets/moneysentclosebutton.png"),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: SizedBox(
                          height: 201,
                          width: 283,
                          child: Image(
                              image: AssetImage(
                                  "lib/assets/moneysentillustration.png")),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 45,
                            child: Text(
                              "Money Sent!",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 285,
                            height: 25,
                            child: Text(
                              "We have just send your money to",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: 280,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image(
                                        image: AssetImage(
                                            "lib/assets/moneysentperson.png")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text("Melanie Ward",
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Column(
                                children: [
                                  Text(
                                    //r"$40.00",
                                    widget.textAmount,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32.0),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      widget.textReason,
                                      //"for 'Tuesday lunch'",
                                      style: TextStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              "Oct. 26, 2021 - 9:40 PM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//Color(0xffD0F1EB),
//Image(image: AssetImage("lib/assets/moneysentillustration.png")),
