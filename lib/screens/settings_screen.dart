import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pengaturan')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.info, color: Colors.green),
              title: Text('Tentang Aplikasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text('Aplikasi Koperasi Simpan Pinjam membantu pengelolaan anggota, pinjaman, dan laporan keuangan.'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.verified, color: Colors.green),
              title: Text('Versi Aplikasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text('Versi 1.0.0'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.developer_mode, color: Colors.green),
              title: Text('Pengembang', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text('Dikembangkan oleh Kelompok 4'),
            ),
          ],
        ),
      ),
    );
  }
}
