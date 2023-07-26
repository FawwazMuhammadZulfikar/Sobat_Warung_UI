import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';

class ListPembayaran extends StatefulWidget {
  const ListPembayaran({
    Key? key,
  }) : super(key: key);

  @override
  State<ListPembayaran> createState() => _ListPembayaranState();
}

class _ListPembayaranState extends State<ListPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.payment,
            ),
            title: Text(
              "Cash on Delivery",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pembayaran di tempat dengan kurir BUMDES",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_bank/Logo-Bank-BRI.png'),
            ),
            title: Text(
              "Virtual Account Bank BRI",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pembayaran dengan Virtual Account Bank",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_bank/2560px-BNI_logo.svg.png'),
            ),
            title: Text(
              "Virtual Account Bank BNI",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pembayaran dengan Virtual Account Bank",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_bank/Logo-Bank-Mandiri.png'),
            ),
            title: Text(
              "Virtual Account Bank Mandiri",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pembayaran dengan Virtual Account Bank",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_bank/Logo-BCA-PNG-1024x768.png'),
            ),
            title: Text(
              "Virtual Account Bank BCA",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pembayaran dengan Virtual Account Bank",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
        ],
      ),
    );
  }
}
