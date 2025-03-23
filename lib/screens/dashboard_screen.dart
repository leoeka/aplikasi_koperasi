import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigasi ke ProfileScreen
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Profil'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke HomeScreen
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Beranda'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke MembersScreen
                Navigator.pushNamed(context, '/members');
              },
              child: Text('Anggota'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke EmployeesScreen
                Navigator.pushNamed(context, '/employees');
              },
              child: Text('Pegawai'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke ReportsScreen
                Navigator.pushNamed(context, '/reports');
              },
              child: Text('Laporan'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke LoansScreen
                Navigator.pushNamed(context, '/loans');
              },
              child: Text('Pinjaman'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke InstallmentsScreen
                Navigator.pushNamed(context, '/installments');
              },
              child: Text('Angsuran'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke SettingsScreen
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Pengaturan'),
            ),
          ],
        ),
      ),
    );
  }
}