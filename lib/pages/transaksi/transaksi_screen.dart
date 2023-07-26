import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/model/product.dart';
import 'package:sobat_warung_ui/pages/home/components/buttom_bar.dart';
import 'package:sobat_warung_ui/pages/home/components/costom_appbar.dart';

class TransaksiScreen extends StatefulWidget {
  const TransaksiScreen({super.key});

  @override
  State<TransaksiScreen> createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          const CostumBarNav(selectMenu: MenuState.transaction),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kGreyColor.withOpacity(0.4),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(productlist[0].image),
                    ),
                    title: Text(
                      "INV123456789",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      "Sedang Proses",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kGreyColor.withOpacity(0.4),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(productlist[0].image),
                    ),
                    title: Text(
                      "INV121131211",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      "Selesai",
                      style: TextStyle(fontSize: 14, color: Colors.green),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kGreyColor.withOpacity(0.4),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(productlist[0].image),
                    ),
                    title: Text(
                      "INV123456789",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      "Pesanan dibatalkan",
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
