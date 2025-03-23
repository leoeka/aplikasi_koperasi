import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Laporan')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Laporan Keuangan'),
            Text('Laporan Pinjaman'),
            // Tambahkan laporan lainnya
          ],
        ),
      ),
    );
  }
}