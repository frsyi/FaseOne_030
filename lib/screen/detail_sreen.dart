import 'package:flutter/material.dart';
import 'package:ucp1paml/screen/login_screen.dart';
import 'package:ucp1paml/widget/footerTiga_widget.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {super.key,
      required this.nama,
      required this.noTelp,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String nama;
  final String noTelp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Detail Form"), backgroundColor: Colors.purple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama: $nama"),
            const SizedBox(
              height: 10,
            ),
            Text("No Telpon: $noTelp"),
            const SizedBox(
              height: 10,
            ),
            Text("Makanan: $makanan"),
            const SizedBox(
              height: 10,
            ),
            Text("Minuman: $minuman"),
            const SizedBox(
              height: 10,
            ),
            Text("Dessert: $dessert"),
            const SizedBox(
              height: 15,
            ),
            FooterTigaWidget(onPressedEnd: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            })
          ],
        ),
      ),
    );
  }
}
