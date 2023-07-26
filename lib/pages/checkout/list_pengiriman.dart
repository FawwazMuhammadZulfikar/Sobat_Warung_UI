import 'package:flutter/material.dart';

class ListPengiriman extends StatefulWidget {
  const ListPengiriman({super.key});

  @override
  State<ListPengiriman> createState() => _ListPengirimanState();
}

class _ListPengirimanState extends State<ListPengiriman> {
  @override
  Widget build(BuildContext context) {
        return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.local_shipping,
            ),
            title: Text(
              "Kurir BUMDES",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pengiriman langsung oleh kurir BUMDES",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_Pengiriman/Gojek.png'),
            ),
            title: Text(
              "Gojek",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pengiriman Melalui Gojek",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_Pengiriman/grab-logo-png-transparent.png'),
            ),
            title: Text(
              "Grab",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pengiriman Melalui Gojek",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_Pengiriman/sicepat-ekspres-logo-F183B280E5-seeklogo.com.png'),
            ),
            title: Text(
              "Sicepat",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pengiriman Melalui Sicepat",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo_Pengiriman/LOGO-JNT.png'),
            ),
            title: Text(
              "J&T",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              "Pengiriman Melalui J&T",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.circle_outlined),
          ),
        ],
      ),
    );
  }
}