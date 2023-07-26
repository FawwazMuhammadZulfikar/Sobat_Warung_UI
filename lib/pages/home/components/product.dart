import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/model/product.dart';
import 'package:sobat_warung_ui/pages/home/detail_screen/detail_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: productlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) => Products(
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                productDetail: productlist[index],
                              )));
                },
                product: productlist[index],
              )),
    );
  }
}

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(right: 3.0, left: 3.0),
        child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      product.price,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.yellow),
                    Text(
                      "${product.rating}",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      product.city,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w100),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
