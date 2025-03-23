import 'package:flutter/material.dart';

class EmployeesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Pegawai', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 4, // Bayangan untuk efek depth
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 10, // Ganti dengan jumlah pegawai sebenarnya
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 4, // Efek shadow untuk modern look
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Membuat card lebih melengkung
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade700,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.person, size: 28), // Ganti angka dengan ikon user
                ),
                title: Text(
                  'Pegawai ${index + 1}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Klik untuk lihat detail',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                onTap: () {
                  _showEmployeeDetails(context, index + 1);
                },
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        // Aksi edit pegawai
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Aksi hapus pegawai
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

  void _showEmployeeDetails(BuildContext context, int employeeNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Detail Pegawai $employeeNumber'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade700,
                foregroundColor: Colors.white,
                child: Icon(Icons.person, size: 50), // Ganti angka dengan ikon user
              ),
              SizedBox(height: 10),
              Text('Nama: Pegawai $employeeNumber',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Jabatan: Staff ${employeeNumber}',
                  style: TextStyle(fontSize: 14)),
              SizedBox(height: 5),
              Text('Telepon: 0812-5678-${employeeNumber}00',
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
