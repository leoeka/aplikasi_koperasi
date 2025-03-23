import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Anggota')),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah anggota sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Anggota ${index + 1}'),
            subtitle: Text('Informasi anggota'),
          );
        },
      ),
    );
  }
}