import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/components/buttom_bar.dart';
import 'package:sobat_warung_ui/pages/home/components/caraousel.dart';
import 'package:sobat_warung_ui/model/product.dart';
import 'package:sobat_warung_ui/pages/home/components/product.dart';
import 'components/category_list.dart';
import 'components/costom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      bottomNavigationBar: CostumBarNav(selectMenu: MenuState.home,),
      body: SafeArea(
          child: ListView(
        children: const [
          CostumAppBar(),
          SliderCarousel(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Kategori",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Categorylist(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Produk Terbaru",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ProductCard(),
        ],
      )),
    );
  }
}

