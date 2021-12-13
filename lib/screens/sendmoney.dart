// ignore_for_file: prefer_const_constructors

import 'package:finance_app_1/screens/mainappbar.dart';
import 'package:finance_app_1/screens/moneysent.dart';
import 'package:finance_app_1/screens/wallet_2.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'consts.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar("SendMoney"),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return buildCarouselCard(index);
                },
                options: CarouselOptions(
                  height: 190.0,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  initialPage: 1,
                  enlargeCenterPage: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Container(
                height: 350,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 190,
                      width: 220,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("lib/assets/sendmoney_image.png"),
                          ),
                          Text("Melanie Ward",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 140,
                      child: TextFormField(
                        controller: textFieldController2,
                        style: TextStyle(fontSize: 32),
                        //controller: numberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 30.0),
                          hintText: 'Amount',
                          hintStyle: TextStyle(fontSize: 24.0),
                          prefix: Text(
                            "\$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32.0),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 55,
                      width: 310,
                      child: TextField(
                        controller: textFieldController1,
                        style: TextStyle(fontSize: 22.0),
                        textAlign: TextAlign.center,
                        obscureText: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Reason',
                            hintStyle: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 110,
                child: Column(
                  children: [
                    SizedBox(
                      width: 310,
                      height: 55,
                      child: FlatButton(
                        color: Color(0xff6F6CD9),
                        onPressed: () {
                          _sendReasonToSentMoney(context);
                          /* 
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MoneySent()));*/
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
              // TO DO
              // FINISH SEND MONEY SCREEN
              // CHECK APPBAR TITLES FOR POSSIBLE ERRORS
            ],
          ),
        ]),
      ),
    );
  }

  void _sendReasonToSentMoney(BuildContext context) {
    String textreason = textFieldController1.text;
    String textAmount = textFieldController2.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MoneySent(
            textReason: textreason,
            textAmount: textAmount,
          ),
        ));
  }
}

Widget buildCarouselCard(int index) => SizedBox(
      child: Container(
        width: 330.0,
        child: buildCard(index),
      ),
    );
