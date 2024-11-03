import 'package:flutter/material.dart';
import 'lupa_password.dart';
import 'register_page.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
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
                Image.asset(
                  'assets/logo_responsi.png',
                  height: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Masuk',
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
                const SizedBox(height: 10),
                _buildAccountOptions(context),
                const SizedBox(height: 40),
                _buildLoginButton(context),
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

  Widget _buildAccountOptions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Belum punya akun?"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LupaPasswordPage()),
                );
              },
              child: const Text(
                'Lupa Password?',
                style: TextStyle(color: Color(0xFF4285F4)),
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          },
          child: const Text(
            'Daftar',
            style: TextStyle(color: Color(0xFF4285F4)),
          ),
        ),
      ],
    );
  }

  Center _buildLoginButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
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
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
        child: const Text(
          'Masuk',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
