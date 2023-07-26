import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Notifikasi",
              style: const TextStyle(
                color: Colors.black,
              )),
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 35,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Pesananmu sedang diproses bro!',
                  style: TextStyle(color: Colors.black)),
              subtitle:  Text('2 April 2023', style: TextStyle(color: Colors.grey)),
              onTap: (){},
              enabled: true,
              );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }
}
