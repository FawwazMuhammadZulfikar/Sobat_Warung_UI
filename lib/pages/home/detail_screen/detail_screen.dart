import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/main.dart';
import 'package:sobat_warung_ui/model/product.dart';

class DetailScreen extends StatefulWidget {
  final Product productDetail;
  const DetailScreen({super.key, required this.productDetail});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: BackButton(color: Colors.black),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.shopping_cart_outlined),
            ),
            onPressed: () {},
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.grey,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Image.asset(
              widget.productDetail.image,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.productDetail.title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.productDetail.price,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, size: 20, color: Colors.yellow),
                    Text(
                      "${widget.productDetail.rating}",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      widget.productDetail.city,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 2)),
                            ],
                          ),
                          child: const Icon(Icons.remove, color: kPrimaryColor),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 2)),
                            ],
                          ),
                          child: const Icon(
                            Icons.add,
                            color: kPrimaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Detail Produk"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Text(widget.productDetail.description,
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Text(widget.productDetail.description,
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minWidth: 250,
                  height: 50,
                  color: kPrimaryColor,
                  onPressed: () {
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        text: 'Pesanan Berhasil dtambahkan',
                        autoCloseDuration: Duration(
                          seconds: 5,
                        ));
                  },
                  child: const Text(
                    "Tambah ke Keranjang",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
