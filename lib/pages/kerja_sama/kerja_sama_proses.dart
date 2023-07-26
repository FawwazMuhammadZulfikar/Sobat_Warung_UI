import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KerjaSamaProses extends StatefulWidget {
  const KerjaSamaProses({super.key});

  @override
  State<KerjaSamaProses> createState() => _KerjaSamaProsesState();
}

class _KerjaSamaProsesState extends State<KerjaSamaProses> {
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
                  'https://assets3.lottiefiles.com/packages/lf20_m3ixidnq.json',
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
            child: Text("Mohon Tunggu, Kerja Sama Anda sedang kami proses...",textAlign: TextAlign.center,style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
