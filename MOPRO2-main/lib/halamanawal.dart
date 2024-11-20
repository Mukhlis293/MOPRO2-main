import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'login.dart'; // Pastikan nama file sesuai dengan lokasi file HalamanLogin

class HalamanAwal extends StatefulWidget {
  const HalamanAwal({super.key});

  @override
  _HalamanAwalState createState() => _HalamanAwalState();
}

class _HalamanAwalState extends State<HalamanAwal> {
  @override
  void initState() {
    super.initState();
    // Timer untuk pindah ke halaman login setelah 3 detik
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => const HalamanLogin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false, // Menghindari layout bergeser
      child: Container(
        width: double.infinity, // Full lebar layar
        height: double.infinity, // Full tinggi layar
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/domba.jpeg'), // Gambar latar belakang
            fit: BoxFit.cover, // Membuat gambar menutupi seluruh layar
          ),
        ),
        child: Center(
          child: Image.asset(
            'images/domba.jpeg', // Gambar logo atau ikon tambahan
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
