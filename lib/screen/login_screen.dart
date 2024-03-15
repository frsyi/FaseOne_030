import 'package:flutter/material.dart';
import 'package:ucp1paml/main.dart';
import 'package:ucp1paml/screen/detail_sreen.dart';
import 'package:ucp1paml/screen/makanan_screen.dart';
import 'package:ucp1paml/widget/footerSatu_widget.dart';
import 'package:ucp1paml/widget/formSatu_widget.dart';
import 'package:ucp1paml/widget/headerSatu_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  var nama = TextEditingController();
  var noTelp = TextEditingController();
  var alamat = TextEditingController();
  var jk = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderSatuWidget(),
                FormSatuWidget(
                    formKey: formKey,
                    etNama: nama,
                    etNoTelp: noTelp,
                    etAlamat: alamat,
                    etJk: jk
                ),
                FooterSatuWidget(
                  onPressedLogin: () {
                    if(formKey.currentState!.validate()) {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => MakananScreen(nama: nama.text, noTelp: noTelp.text)
                        ),);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login Sukses!"),
                        )
                      ) ;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
