import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LoansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Pinjaman',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 4, // Efek bayangan
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 10, // Jumlah pinjaman
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 5, // Shadow agar tampak modern
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Membuat Card lebih melengkung
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade100, Colors.blue.shade50], 
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.shade700,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.monetization_on, size: 28),
                  ),
                  title: Text(
                    'Pinjaman ${index + 1}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Total: ${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format((index + 1) * 1000000)}',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    _showLoanDetails(context, index + 1);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showLoanDetails(BuildContext context, int loanNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Detail Pinjaman $loanNumber'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.monetization_on, size: 50, color: Colors.blue),
              SizedBox(height: 10),
              Text(
                'Jumlah Pinjaman: ${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(loanNumber * 1000000)}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('Status: Belum Lunas', style: TextStyle(color: Colors.red)),
              SizedBox(height: 10),
              Text(
                'Jatuh Tempo: 30 Hari Setelah Peminjaman',
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
