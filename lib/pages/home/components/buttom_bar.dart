import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/home_screen.dart';
import 'package:sobat_warung_ui/pages/kerja_sama/kerja_sama.dart';
import 'package:sobat_warung_ui/pages/profile/profile_screen.dart';
import 'package:sobat_warung_ui/pages/search/search_screen.dart';
import 'package:sobat_warung_ui/pages/transaksi/transaksi_screen.dart';

enum MenuState { profile, home, transaction, search, cooperation }

class CostumBarNav extends StatelessWidget {
  const CostumBarNav({
    super.key,
    required this.selectMenu,
  });
  final MenuState selectMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      decoration: BoxDecoration(color: kSecondaryColor, boxShadow: [
        BoxShadow(
          color: kGreyColor,
          blurRadius: 5,
          spreadRadius: 5.0,
        )
      ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(
            Icons.home_rounded,
            color: MenuState.home == selectMenu ? kPrimaryColor : Colors.grey,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchScreen()));
          },
          icon: Icon(
            Icons.search,
            color: MenuState.search == selectMenu ? kPrimaryColor : Colors.grey,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KerjaSamaScreen()));
          },
          icon: Icon(
            Icons.handshake,
            color: MenuState.cooperation == selectMenu
                ? kPrimaryColor
                : Colors.grey,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TransaksiScreen()));
          },
          icon: Icon(
            Icons.history,
            color: MenuState.transaction == selectMenu
                ? kPrimaryColor
                : Colors.grey,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: Icon(
            Icons.person,
            color:
                MenuState.profile == selectMenu ? kPrimaryColor : Colors.grey,
            size: 30,
          ),
        ),
      ]),
    );
  }
}
