import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryList(
            press: () {},
            title: 'Makanan',
          ),
          CategoryList(
            press: () {},
            title: 'Minuman',
          ),
          CategoryList(
            press: () {},
            title: 'Souvenier',
          ),
          CategoryList(
            press: () {},
            title: 'Snack',
          ),
        ],
      ),
    );
  }
}



class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: press,
        child: Chip(
            backgroundColor: kGreyColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            label: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text(
                title,
                style: const TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
            )),
      ),
    );
  }
}
