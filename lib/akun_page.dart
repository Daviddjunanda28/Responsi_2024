import 'package:flutter/material.dart';

class AkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F8),
      appBar: AppBar(
        title: const Text('Akun Page', 
        style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'PostNoBillsColomboExtraBold'),
        ),
        backgroundColor: Color(0xFFF3F3F8),
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
                        'assets/gambar_pofil.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

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

            _buildOptionTile(context, 'Kelola Akun'),
            _buildOptionTile(context, 'Notifikasi'),
            _buildOptionTile(context, 'Privacy Policy'),
            _buildOptionTile(context, 'Terms of Service'),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context, String title) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
      },
    );
  }
}
