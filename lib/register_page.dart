import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F8),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo_responsi.png', height: 100),
                const SizedBox(height: 20),
                const Text(
                  'Daftar Akun',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PostNoBillsColomboExtraBold',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                _buildTextField(label: 'Email', icon: Icons.email),
                const SizedBox(height: 20),
                _buildTextField(
                  label: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  label: 'Konfirmasi Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                _buildRegisterButton(context),
                const SizedBox(height: 20),
                _buildLoginLink(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField _buildTextField({
    required String label,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFF4285F4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFF4285F4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFF4285F4), width: 2.0),
        ),
        prefixIcon: Icon(icon, color: Color(0xFF4285F4)),
        labelStyle: TextStyle(color: Color(0xFF4285F4)),
      ),
    );
  }

  ElevatedButton _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF4285F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: const Text(
        'Daftar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Row _buildLoginLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Sudah punya akun?"),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: const Text(
            'Masuk',
            style: TextStyle(color: Color(0xFF4285F4)),
          ),
        ),
      ],
    );
  }
}
