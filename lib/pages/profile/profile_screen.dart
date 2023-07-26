import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/components/buttom_bar.dart';
import 'package:sobat_warung_ui/pages/home/components/costom_appbar.dart';
import 'package:sobat_warung_ui/pages/login_screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CostumBarNav(selectMenu: MenuState.profile),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/avatar.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Mitra Sobat Warung",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtonCard(
                  press: () {},
                  title: 'Pengaturan',
                ),
                ButtonCard(
                  press: () {},
                  title: 'Edit Profil',
                ),
                ButtonCard(
                  press: () {},
                  title: 'FAQ',
                ),
                ButtonCard(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  title: 'Keluar',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kGreyColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15.0),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
