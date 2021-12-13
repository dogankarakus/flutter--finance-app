import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';

class Spending {
  String imagepath;
  String name;
  double cost;
  String dislaycost;
  Spending(this.imagepath, this.name, this.cost, this.dislaycost);
}

List<Spending> myList = [
  Spending(
    "lib/assets/Icon_1_1.png",
    "Shopping ",
    120.0,
    r"$120,00",
  ),
  Spending(
    "lib/assets/Icon_1_2.png",
    "Food ",
    55.0,
    r"$55,00",
  ),
  Spending(
    "lib/assets/Icon_1_3.png",
    "Tranportation ",
    80.0,
    r"$80,00",
  ),
];

class CreditCards {
  String name;
  String balance;
  int color;
  int last4digits;
  String expdate;
  String cardOwner;
  String logopath;
  CreditCards(
    this.balance,
    this.logopath,
    this.color,
    this.name,
    this.last4digits,
    this.expdate,
    this.cardOwner,
  );
}

List<CreditCards> creditCardsList = [
  CreditCards(
    r"$3,360.00",
    "lib/assets/creditcards_logo_1.png",
    0xffD3E1FF,
    "VISA",
    2230,
    "09/26",
    "Deniz Barhun",
  ),
  CreditCards(
    r"$7,065.00",
    "lib/assets/creditcards_logo_2.png",
    0xffF5D4C1,
    "Mastercard",
    7281,
    "07/26",
    "Louis Scottson",
  ),
  CreditCards(
    r"$935.33",
    "lib/assets/creditcards_logo_3.png",
    0xffDED2F9,
    "American Express",
    4136,
    "08/25",
    "Louis Scottson",
  ),
];

class Recents {
  String name;
  String logopath;

  Recents(
    this.name,
    this.logopath,
  );
}

List<Recents> RecentList = [
  Recents(
    "Deborah Sanchez",
    "lib/assets/recentsicon_1.png",
  ),
  Recents(
    "Melanie Ward",
    "lib/assets/recentsicon_2.png",
  ),
  Recents(
    "Adrienne Huffman",
    "lib/assets/recentsicon_3.png",
  ),
  Recents(
    "Emily Ibarra",
    "lib/assets/recentsicon_4.png",
  ),
  Recents(
    "Evan Harper",
    "lib/assets/recentsicon_5.png",
  ),
  Recents(
    "Daniel Ferrell",
    "lib/assets/recentsicon_6.png",
  ),
];

class PieData {
  static List<Data> data = [
    Data(name: 'Blue', percent: 42, color: const Color(0xff2f4b7c)),
    Data(name: 'Orange', percent: 18, color: const Color(0xffa05195)),
    Data(name: 'Black', percent: 22, color: const Color(0xfff95d6a)),
    Data(name: 'Green', percent: 18, color: const Color(0xffffa600)),
  ];
}

class Data {
  final String name;
  final double percent;
  final Color color;

  Data({required this.name, required this.percent, required this.color});
}
