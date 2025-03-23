import 'package:flutter/material.dart';
import 'package:flutter_koperasi/screens/dashboard_screen.dart';
import 'package:flutter_koperasi/screens/employees_screen.dart';
import 'package:flutter_koperasi/screens/home_screen.dart';
import 'package:flutter_koperasi/screens/installments_screen.dart';
import 'package:flutter_koperasi/screens/loans_screen.dart';
import 'package:flutter_koperasi/screens/members_screen.dart';
import 'package:flutter_koperasi/screens/profile_screen.dart';
import 'package:flutter_koperasi/screens/register_screen.dart';
import 'package:flutter_koperasi/screens/reports_screen.dart';
import 'package:flutter_koperasi/screens/settings_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koperasi Simpan Pinjam',
      theme: ThemeData(
        primaryColor: Colors.green.shade800, // Warna hijau koperasi utama
        scaffoldBackgroundColor: Colors.green.shade50, // Latar belakang hijau muda
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.shade800,
          foregroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shadowColor: Colors.green.shade200,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        listTileTheme: ListTileThemeData(
          iconColor: Colors.green.shade800,
          textColor: Colors.black87,
        ),
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/home': (context) => HomeScreen(),
        '/members': (context) => MembersScreen(),
        '/employees': (context) => EmployeesScreen(),
        '/reports': (context) => ReportsScreen(),
        '/loans': (context) => LoansScreen(),
        '/installments': (context) => InstallmentsScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}

// DashboardScreen dengan tampilan fitur dalam bentuk Card
typedef NavigateCallback = void Function();

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {'title': 'Profil', 'icon': Icons.person, 'route': '/profile'},
    {'title': 'Beranda', 'icon': Icons.home, 'route': '/home'},
    {'title': 'Anggota', 'icon': Icons.group, 'route': '/members'},
    {'title': 'Pegawai', 'icon': Icons.work, 'route': '/employees'},
    {'title': 'Laporan', 'icon': Icons.bar_chart, 'route': '/reports'},
    {'title': 'Pinjaman', 'icon': Icons.attach_money, 'route': '/loans'},
    {'title': 'Angsuran', 'icon': Icons.payment, 'route': '/installments'},
    {'title': 'Pengaturan', 'icon': Icons.settings, 'route': '/settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: features.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, features[index]['route']);
              },
              child: Card(
                elevation: 5,
                shadowColor: Colors.green.shade400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(features[index]['icon'], size: 50, color: Colors.green.shade700),
                    SizedBox(height: 10),
                    Text(
                      features[index]['title'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
