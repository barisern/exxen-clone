import 'package:flutter/material.dart';

import '../constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Image(
        image: AssetImage('assets/images/exxen_logo.png'),
        width: 110,
      ),
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(Icons.menu),
        iconSize: 28,
        color: kYellowColor,
        onPressed: () => print('Menu pressed'),
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: Icon(Icons.search),
          iconSize: 28,
          color: kYellowColor,
          onPressed: () => print('Search pressed'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
