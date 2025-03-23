import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InstallmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Angsuran')),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah pinjaman sebenarnya
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade700,
                foregroundColor: Colors.white,
                child: Icon(Icons.payments, size: 28),
              ),
              title: Text(
                'Pinjaman ${index + 1}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Total Angsuran: ${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format((index + 1) * 500000)}',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                _showInstallmentDetails(context, index + 1);
              },
            ),
          );
        },
      ),
    );
  }

  void _showInstallmentDetails(BuildContext context, int installmentNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Detail Angsuran $installmentNumber'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.payments, size: 50, color: Colors.green),
              SizedBox(height: 10),
              Text(
                'Jumlah Angsuran: ${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(installmentNumber * 500000)}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                installmentNumber % 2 == 0 ? 'Status: Lunas' : 'Status: Belum Lunas',
                style: TextStyle(color: installmentNumber % 2 == 0 ? Colors.green : Colors.red),
              ),
              SizedBox(height: 10),
              Text(
                'Jatuh Tempo: 30 Hari Setelah Pembayaran',
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
}
