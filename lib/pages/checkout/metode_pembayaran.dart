import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/checkout/list_pembayaran.dart';

class MetodePembayaran extends StatelessWidget {
  const MetodePembayaran({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: InkWell(
        onTap: () => showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (_) {
              return Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        decoration: const BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            Container(
                              child: Column(children: const [
                                Text("Metode Pembayaran", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                SizedBox(height: 20),
                                ListPembayaran(
                                )
                              ]),
                            )
                          ],
                        ))),
              );
            }),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kGreyColor.withOpacity(0.4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.payment, color: kPrimaryColor,),
              Text(
                "Pilih Metode Pembayaran",
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
