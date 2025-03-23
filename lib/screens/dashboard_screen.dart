import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Koperasi'),
        backgroundColor: Colors.green.shade800, // Warna hijau koperasi lebih gelap
      ),
      backgroundColor: Colors.green.shade50, // Warna latar hijau muda
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            _buildDashboardItem(
              context,
              title: 'Profil',
              icon: Icons.person,
              color: Colors.green.shade700,
              route: '/profile',
            ),
            _buildDashboardItem(
              context,
              title: 'Beranda',
              icon: Icons.home,
              color: Colors.green.shade600,
              route: '/home',
            ),
            _buildDashboardItem(
              context,
              title: 'Anggota',
              icon: Icons.group,
              color: Colors.green.shade500,
              route: '/members',
            ),
            _buildDashboardItem(
              context,
              title: 'Pegawai',
              icon: Icons.work,
              color: Colors.green.shade400,
              route: '/employees',
            ),
            _buildDashboardItem(
              context,
              title: 'Laporan',
              icon: Icons.bar_chart,
              color: Colors.green.shade700,
              route: '/reports',
            ),
            _buildDashboardItem(
              context,
              title: 'Pinjaman',
              icon: Icons.attach_money,
              color: Colors.green.shade600,
              route: '/loans',
            ),
            _buildDashboardItem(
              context,
              title: 'Angsuran',
              icon: Icons.payment,
              color: Colors.green.shade500,
              route: '/installments',
            ),
            _buildDashboardItem(
              context,
              title: 'Pengaturan',
              icon: Icons.settings,
              color: Colors.green.shade400,
              route: '/settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context,
      {required String title,
      required IconData icon,
      required Color color,
      required String route}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: color, // Gunakan warna utama hijau koperasi
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white), // Ikon jadi putih agar kontras
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks putih agar lebih terbaca
              ),
            ),
          ],
        ),
      ),
    );
  }
}
