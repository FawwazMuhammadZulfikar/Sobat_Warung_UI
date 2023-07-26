import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/components/buttom_bar.dart';
import 'package:sobat_warung_ui/pages/kerja_sama/kerja_sama_proses.dart';

class KerjaSamaScreen extends StatefulWidget {
  const KerjaSamaScreen({super.key});

  @override
  State<KerjaSamaScreen> createState() => _KerjaSamaScreenState();
}

class _KerjaSamaScreenState extends State<KerjaSamaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          const CostumBarNav(selectMenu: MenuState.cooperation),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
      
                  const Text(
                    "Masukan Token",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      color: kGreyColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: "Masukan nomor token Anda",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: kPrimaryColor,
                    minWidth: 250,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KerjaSamaProses()));
                    },
                    child: const Text(
                      "Masuk",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
