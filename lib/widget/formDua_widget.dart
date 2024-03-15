import 'package:flutter/material.dart';

class FormDuaWidget extends StatefulWidget {
  const FormDuaWidget({
    super.key, 
    required this.formKey, 
    required this.etMakanan, 
    required this.etMinuman,
    required this.etDessert,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  @override
  State<FormDuaWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormDuaWidget> {

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etMakanan,
          decoration: const InputDecoration(
            labelText: "Makanan",
            hintText: "Masukkan Makanan",
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etMinuman,
          decoration: const InputDecoration(
            labelText: "Minuman",
            hintText: "Masukkan Minuman",
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etDessert,
          decoration: const InputDecoration(
            labelText: "Dessert",
            hintText: "Masukkan Dessert",
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    ));
  }
}