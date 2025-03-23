import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Kembali ke DashboardScreen
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Ini adalah Halaman Profil'),
      ),
    );
  }
}