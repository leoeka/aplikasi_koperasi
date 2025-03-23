import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Anggota', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 4, // Bayangan untuk memberi efek depth
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 10, // Ganti dengan jumlah anggota sebenarnya
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 4, // Memberikan efek shadow agar tampak modern
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Membuat card lebih melengkung
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green.shade700,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.person, size: 28), // Ganti angka dengan ikon user
                ),
                title: Text(
                  'Anggota ${index + 1}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Klik untuk lihat detail',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                onTap: () {
                  _showMemberDetails(context, index + 1);
                },
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        // Aksi edit anggota
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Aksi hapus anggota
                      },
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

  void _showMemberDetails(BuildContext context, int memberNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Detail Anggota $memberNumber'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green.shade700,
                foregroundColor: Colors.white,
                child: Icon(Icons.person, size: 50), // Ganti angka dengan ikon user
              ),
              SizedBox(height: 10),
              Text('Nama: Anggota $memberNumber',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Alamat: Jalan Raya No. ${memberNumber * 10}',
                  style: TextStyle(fontSize: 14)),
              SizedBox(height: 5),
              Text('Telepon: 0812-3456-${memberNumber}00',
                  style: TextStyle(fontSize: 14)),
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
