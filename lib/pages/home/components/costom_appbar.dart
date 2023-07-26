import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/cart/cart.dart';
import 'package:sobat_warung_ui/pages/home/notifications/notification_screen.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Container(
          padding: EdgeInsets.only(top: 20),
          child: IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationsScreen()));
            },
            iconSize: 30,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            iconSize: 30,
          ),
        ),
      ],
    );
  }
}
