import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/model/product.dart';
import 'package:sobat_warung_ui/pages/checkout/checkout_succes.dart';
import 'package:sobat_warung_ui/pages/checkout/metode_pembayaran.dart';
import 'package:sobat_warung_ui/pages/checkout/metode_pengiriman.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Checkout",
            style: const TextStyle(
              color: Colors.black,
            )),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Alamat Pengiriman",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ganti",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mitra Sobat Warung",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Purwokerto Selatan, Kab. Banyumas, Jawa Tengah"),
                        Text("+62 82312234354"),
                      ],
                    ),
                  ),
                  height: 80,
                  width: 340,
                  decoration: ShapeDecoration(
                      color: kGreyColor.withOpacity(0.4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Metode Pembayaran",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          MetodePembayaran(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Metode Pengiriman",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          MetodePengiriman(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(productlist[0].image),
                  height: 80,
                  width: 80,
                  decoration: ShapeDecoration(
                      color: kGreyColor.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productlist[0].title),
                      Text(productlist[0].price),
                      Text("Total barang: X 1")
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              "Total Bayar: Rp. 15.000",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ])),
          SizedBox(height: 15, ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text("Catatan"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(left: 15.0),
              height: 100,
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minWidth: double.infinity,
              height: 50,
              color: kPrimaryColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // ke Checkout page
                        builder: (context) => const CheckoutSucces()));
              },
              child: const Text(
                "Bayar",
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
