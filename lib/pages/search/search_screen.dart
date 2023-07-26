import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/components/buttom_bar.dart';
import 'package:sobat_warung_ui/pages/home/components/product.dart';
import 'package:sobat_warung_ui/pages/search/produk_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  void updateList(String value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CostumBarNav(selectMenu: MenuState.search),
      body: ListView(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 20.0, top: 20),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.search,
                            ),
                            hintText: "Sedang cari apa Anda?",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ProductCard(),
        ],
      ),
    );
  }
}
