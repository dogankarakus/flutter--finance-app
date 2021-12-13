// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:finance_app_1/screens/homescreen.dart';
import 'package:finance_app_1/screens/statistics.dart';
import 'package:finance_app_1/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'wallet_2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  final List<Widget> screens = <Widget>[
    HomeScreen(),
    TransactionsScreen(),
    Statistics(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: screens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 30)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: BottomNavigationBar(
            backgroundColor: Color(0xffFFFFFF),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Bottomnavbaricon_1.png"),
                  size: 50,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Bottomnavbaricon_2.png"),
                  size: 50,
                ),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Bottomnavbaricon_3.png"),
                  size: 50,
                ),
                label: 'Statistics',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xff6F6CD9),
            unselectedItemColor: Color(0xffACB8C2),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}

/* 
 ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 10)],
          ),
          child: BottomNavigationBar(
            selectedItemColor: Color(0xff6F6CD9),
            currentIndex: currentIndex,
            onTap: (index) => currentIndex = index,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Bottomnavbaricon_1.png"),
                  size: 50,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Bottomnavbaricon_2.png"),
                  size: 50,
                ),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("lib/assets/Bottomnavbaricon_3.png"),
                  size: 50,
                ),
                label: 'Statistics',
              ),
            ],
          ),
        ),
      ),
 */
 /* 
 return Scaffold(
      body: PageView(
        controller: pageController,
        children: <Widget>[
          HomeScreen(),
          TransactionsScreen(),
          Wallet2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/Bottomnavbaricon_1.png"),
              size: 50,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/Bottomnavbaricon_2.png"),
              size: 50,
            ),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/Bottomnavbaricon_3.png"),
              size: 50,
            ),
            label: 'Statistics',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: onTapped,
      ),
    );
 */