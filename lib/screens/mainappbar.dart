import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  MainAppBar(this.title);

  @override
  Size get preferredSize => Size.fromHeight(80.0);

  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 50.0, top: 5),
        child: Text(
          this.widget.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      leading: IconButton(
        icon: Image(
          image: AssetImage("lib/assets/arrow_back.png"),
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image(
                      image: AssetImage("lib/assets/mainappbaricon_1.png")),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image(
                        image: AssetImage("lib/assets/mainappbaricon_2.png"))),
              ],
            ),
          ),
        )
      ],
    );
  }
}
