// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:finance_app_1/screens/bottomNavbar.dart';
import 'package:finance_app_1/screens/consts.dart';
import 'package:finance_app_1/screens/sendmoney.dart';
import 'package:finance_app_1/screens/transactions.dart';
import 'package:finance_app_1/screens/wallet_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F7FA),
      //bottomNavigationBar:

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                TopCard(this.context),
                SizedBox(height: 20),
                BalanceCard(this.context),
                SizedBox(height: 15),
                ThreeCards(this.context),
                SizedBox(height: 15),
                LastActivity(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget TopCard(BuildContext context) => SizedBox(
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          color: Color(0xffD0F1EB),
          clipBehavior: Clip.antiAlias,
          elevation: 2.0,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 65, bottom: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: Image(
                        image: AssetImage("lib/assets/smallprofile.png"),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Text1
                        Text(
                          'Hi, Lou',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        //Text2
                        Row(
                          children: [
                            Text(
                              'Welcome back!',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 22.0,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                    AssetImage("lib/assets/menu.png"))),
                          ],
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
    );
Widget BalanceCard(BuildContext context) => Container(
      height: 200,
      width: 360,
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 135,
                width: 135,
                child: Image(
                  image: AssetImage("lib/assets/currencycrush.png"),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your balance',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          r"$7,065.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("lib/assets/arrow_right.png"),
                        )),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Image(
                      image: AssetImage("lib/assets/wallet.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22.0,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          //TODO: Navigate to Wallet1
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wallet1()));
                        },
                        icon: Image(
                          image: AssetImage("lib/assets/arrow_right.png"),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
Widget ThreeCards(BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150,
          width: 360,
          child: Row(
            children: [
              SizedBox(
                height: 150,
                width: 110,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SendMoney()));
                  },
                  child: Card(
                    color: Color(0xffDED2F9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image(image: AssetImage("lib/assets/Icon_1.png")),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Send",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                  height: 150,
                  width: 110,
                  child: Card(
                    color: Color(0xffD3E1FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image(image: AssetImage("lib/assets/Icon_2.png")),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Request",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                  height: 150,
                  width: 110,
                  child: Card(
                    color: Color(0xffFDC9D2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image(image: AssetImage("lib/assets/Icon_3.png")),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "More",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          )),
    );
Widget LastActivity() => Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your last activity",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("lib/assets/arrow_down.png"),
                        )),
                  ],
                )
              ],
            ),
          ),
          //LIST
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: SizedBox(
                    height: 70,
                    child: Card(
                      elevation: 0.0,
                      color: Color(0xffF4F7FA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image(image: AssetImage(myList[index].imagepath)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              myList[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              myList[index].dislaycost,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
