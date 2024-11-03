import 'package:flutter/material.dart';
import 'login_page.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F8),
      appBar: AppBar(
        title: const Text(
          'Ubah Profil',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'PostNoBillsColomboExtraBold',
          ),
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
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4285F4), 
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), 
                ),
              ),
              child: const Text(
                'Ubah Profil',
                style: TextStyle(color: Colors.white), 
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4285F4), 
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), 
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.white), 
              ),
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFF4285F4)), 
        ),
        prefixIcon: Icon(icon, color: Color(0xFF4285F4)),
        filled: true,
        fillColor: Color(0xFF4285F4)
            .withOpacity(0.1),
      ),
    );
  }
}
