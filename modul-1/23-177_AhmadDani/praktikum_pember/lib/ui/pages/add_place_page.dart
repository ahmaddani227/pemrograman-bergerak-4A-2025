import 'package:flutter/material.dart';
import 'package:praktikum_pember/shared/theme.dart';
import 'package:praktikum_pember/ui/widgets/custom_button.dart';
import 'package:praktikum_pember/ui/widgets/custom_dropdown.dart';
import 'package:praktikum_pember/ui/widgets/custom_input.dart';

class AddPlacePage extends StatefulWidget {
  const AddPlacePage({super.key});

  @override
  State<AddPlacePage> createState() => _AddPlacePageState();
}

class _AddPlacePageState extends State<AddPlacePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaWisataController = TextEditingController();
  final TextEditingController lokasiWisataController = TextEditingController();
  final TextEditingController hargaTiketController = TextEditingController();
  final TextEditingController deskripsController = TextEditingController();

  String _namaWisata = '';
  String _lokasiWisata = '';
  String _hargaTiket = '';
  String _deskripsiWisata = '';
  String? _jenisDipilih;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Untuk sementara, tampilkan data di console
      print("Nama: $_namaWisata");
      print("Lokasi: $_lokasiWisata");
      print("Harga: $_hargaTiket");
      print("Deskripsi: $_deskripsiWisata");
      print("Lokasi: $_jenisDipilih");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data wisata berhasil disimpan'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  void _resetForm() {
    if (_formKey.currentState != null) {
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Text(
                        "Add Place",
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  width: double.infinity,
                  height: 202,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Image.asset("assets/Add Image.png")),
                ),
                SizedBox(height: 9),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Upload Image", style: whiteTextStyle),
                ),
                SizedBox(height: 15),
                CustomInput(
                  controller: namaWisataController,
                  label: "Nama Wisata :",
                  hint: "Masukkan Nama Wisata Disini",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Nama Wisata harus diisi";
                    }
                    return null;
                  },
                ),
                CustomInput(
                  controller: lokasiWisataController,
                  label: "Lokasi Wisata :",
                  hint: "Masukkan Lokasi Wisata Disini",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Lokasi Wisata harus diisi";
                    }
                    return null;
                  },
                ),
                CustomDropdown(
                  label: "Lokasi Wisata :",
                  hint: "Pilih Lokasi Wisata",
                  items: [
                    "Surabaya",
                    "Jakarta",
                    "Bandung",
                    "Semarang",
                    "Malang",
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Lokasi Wisata harus diisi";
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() => _jenisDipilih = value),
                ),
                CustomDropdown(
                  label: "Jenis Wisata :",
                  hint: "Pilih Jenis Wisata",
                  items: ["Wisata A", "Wisata B"],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Jenis Wisata harus diisi";
                    }
                    return null;
                  },
                ),
                CustomInput(
                  controller: hargaTiketController,
                  label: "Harga Tiket :",
                  hint: "Masukkan Harga Tiket Disini",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Harga Tiket harus diisi";
                    }
                    if (!RegExp(r'^[0-9]+(\.[0-9]+)?$').hasMatch(value)) {
                      return 'Masukkan hanya angka (contoh: 10000 atau 12500.50)';
                    }
                    return null;
                  },
                ),
                CustomInput(
                  controller: deskripsController,
                  label: "Deskripsi :",
                  hint: "Masukkan Deskripsi Disini",
                  maxLines: 4,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field Deskripsi harus diisi";
                    }
                    return null;
                  },
                ),
                CustomButton(title: "Simpan", onPressed: _submitForm),
                CustomButton(
                  onPressed: _resetForm,
                  title: "Reset",
                  underline: true,
                  textColor: kPrimaryColor,
                  backgroundColor: Colors.grey.shade200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
