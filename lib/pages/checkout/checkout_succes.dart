import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/home_screen.dart';

class CheckoutSucces extends StatefulWidget {
  const CheckoutSucces({super.key});

  @override
  State<CheckoutSucces> createState() => _CheckoutSuccesState();
}

class _CheckoutSuccesState extends State<CheckoutSucces> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_QGHiAw.json',
                  fit: BoxFit.cover,
                  height: 400,
                  reverse: true,
                  repeat: true,
                ),
              ],
            ),
          ),

          const Center(
              child: Text(
            "SUKSES",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Transaksi Anda berhasil",textAlign: TextAlign.center,style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 70,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minWidth: 20,
              height: 50,
              color: kPrimaryColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // ke Checkout page
                        builder: (context) => const HomeScreen()));
              },
              child: const Text(
                "kembali ke beranda",
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
