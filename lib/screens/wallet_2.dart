import 'package:finance_app_1/screens/bottomNavbar.dart';
import 'package:finance_app_1/screens/consts.dart';
import 'package:finance_app_1/screens/mainappbar.dart';
import 'package:flutter/material.dart';

class Wallet2 extends StatefulWidget {
  const Wallet2({Key? key}) : super(key: key);

  @override
  _Wallet2State createState() => _Wallet2State();
}

class _Wallet2State extends State<Wallet2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar("Your Wallet"),
      backgroundColor: Color(0xffF4F7FA),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff91D7E0),
        foregroundColor: Color(0xff6F6CD9),
        onPressed: () {},
        child: ImageIcon(AssetImage("lib/assets/floatingactionbuttonadd.png")),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) => buildCard(index),
      ),
    );
  }
}

Widget buildCard(int index) => Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: SizedBox(
        height: 190,
        width: 320,
        child: Card(
          color: Color(creditCardsList[index].color),
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Balance",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                creditCardsList[index].balance.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.topRight,
                            height: 30,
                            width: 60,
                            child: Image(
                                image: AssetImage(
                                    creditCardsList[index].logopath)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "**** **** **** " +
                                creditCardsList[index].last4digits.toString(),
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 299,
                            child: Row(
                              children: [
                                Text(
                                  creditCardsList[index].cardOwner,
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Text("Exp. Date "),
                                Text(
                                  creditCardsList[index].expdate,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
