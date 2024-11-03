import 'package:flutter/material.dart';

class KelolaAkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kelola Akun',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'PostNoBillsColomboExtraBold',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: GridView.count(
                crossAxisCount: 1,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/gambar_profil.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Nama Lengkap: David Bagus Junanda',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Asal Universitas: Universitas Teknologi Yogyakarta',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            _buildTextField(label: 'Email', icon: Icons.email),
            const SizedBox(height: 10),
            _buildTextField(label: 'Nama', icon: Icons.person),
            const SizedBox(height: 10),
            _buildTextField(label: 'Nomor Telepon', icon: Icons.phone),
            const SizedBox(height: 10),
            _buildTextField(label: 'Alamat', icon: Icons.home),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Simpan Perubahan'),
            ),
          ],
        ),
      ),
    );
  }

  TextField _buildTextField({required String label, required IconData icon}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(icon),
      ),
    );
  }
}
