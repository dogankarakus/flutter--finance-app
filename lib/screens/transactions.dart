// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:finance_app_1/screens/bottomNavbar.dart';
import 'package:finance_app_1/screens/consts.dart';
import 'package:finance_app_1/screens/mainappbar.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F7FA),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Text(
                  "Chose which account to transfer to",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              NewAccountCard(),
              SizedBox(
                height: 20,
              ),
              ListViewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget NewAccountCard() => SizedBox(
      height: 110,
      width: 380,
      child: Card(
        elevation: 4.0,
        color: Color(0xffD0F1EB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage(
                          "lib/assets/transactions_newaccounticon.png"),
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "New Account",
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );

Widget ListViewCard() => SizedBox(
      width: 380,
      height: 450,
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 45.0, right: 45.0, top: 5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Recents",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Image(
                            image: AssetImage(
                                "lib/assets/recentscontactsdivider.png"),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Contacts",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Image(
                          image: AssetImage(
                              "lib/assets/recentscontactsbottomline.png")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 380,
                  height: 370,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: Image(
                                    image: AssetImage(
                                        RecentList[index].logopath))),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              RecentList[index].name,
                              style: TextStyle(fontSize: 18),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Image(
                                  image:
                                      AssetImage("lib/assets/threedotmenu.png"),
                                ))
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

/* 
ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image(
                                image: AssetImage(RecentList[index].logopath))),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          RecentList[index].name,
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage("lib/assets/threedotmenu.png"),
                            ))
                      ],
                    ),
                  );
                },
              ),
*/