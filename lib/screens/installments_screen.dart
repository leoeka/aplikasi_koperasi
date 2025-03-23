import 'package:flutter/material.dart';

class InstallmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pinjaman')),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah pinjaman sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Pinjaman ${index + 1}'),
            subtitle: Text('Informasi pinjaman'),
          );
        },
      ),
    );
  }
}