import 'package:flutter/material.dart';

class FormSatuWidget extends StatefulWidget {
  const FormSatuWidget({
    super.key,
    required this.formKey,
    required this.etNama,
    required this.etNoTelp,
    required this.etAlamat,
    required this.etJk,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etNoTelp;
  final TextEditingController etAlamat;
  final TextEditingController etJk;

  @override
  State<FormSatuWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormSatuWidget> {
  String? _jenisKelamin;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                controller: widget.etNama,
                decoration: const InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukkan Nama",
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: widget.etNoTelp,
                decoration: const InputDecoration(
                  labelText: "No Telpon",
                  hintText: "Masukkan No Telpon",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan No Telpon!';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: widget.etAlamat,
                decoration: const InputDecoration(
                  labelText: "Alamat",
                  hintText: "Masukkan Alamat",
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                title: Text('Perempuan'),
                leading: Radio<String>(
                  value: 'Perempuan',
                  groupValue: _jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      _jenisKelamin = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Laki - laki'),
                leading: Radio<String>(
                  value: 'Laki-laki',
                  groupValue: _jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      _jenisKelamin = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
