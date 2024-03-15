import 'package:flutter/material.dart';
import 'package:ucp1paml/screen/detail_sreen.dart';
import 'package:ucp1paml/widget/footerDua_widget.dart';
import 'package:ucp1paml/widget/formDua_widget.dart';

class MakananScreen extends StatelessWidget {
  MakananScreen({super.key, required this.nama, required this.noTelp});

  final String nama;
  final String noTelp;

  @override
  var makanan = TextEditingController();
  var minuman = TextEditingController();
  var dessert = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text("Data Makanan"), backgroundColor: Colors.purple),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Nama: $nama",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "No Telpon: $noTelp",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                FormDuaWidget(
                    formKey: formKey,
                    etMakanan: makanan,
                    etMinuman: minuman,
                    etDessert: dessert),
                FooterDuaWidget(onPressedNext: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                nama: nama,
                                noTelp: noTelp,
                                makanan: makanan.text,
                                minuman: minuman.text,
                                dessert: dessert.text)),
                        (route) => false);
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
