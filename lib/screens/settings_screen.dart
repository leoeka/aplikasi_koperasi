import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pengaturan')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Ganti Password'),
            onTap: () {
              // Navigasi ke halaman ganti password
            },
          ),
          ListTile(
            title: Text('Notifikasi'),
            onTap: () {
              // Navigasi ke halaman notifikasi
            },
          ),
          // Tambahkan opsi pengaturan lainnya
        ],
      ),
    );
  }
}