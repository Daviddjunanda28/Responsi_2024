import 'package:flutter/material.dart';

class LupaPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

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
                  'Lupa Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PostNoBillsColomboExtraBold',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Masukkan email Anda dan tunggu kode reset akan dikirimkan.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                _buildEmailField(),
                const SizedBox(height: 20),
                _buildSendButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField _buildEmailField() {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
        labelText: 'Email',
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
        prefixIcon: Icon(Icons.email, color: Color(0xFF4285F4)),
        labelStyle: TextStyle(color: Color(0xFF4285F4)),
      ),
    );
  }

  ElevatedButton _buildSendButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF4285F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
      ),
      onPressed: () {
        final email = _emailController.text;
        final message = email.isNotEmpty
            ? 'Link reset password telah dikirim ke email Anda.'
            : 'Mohon masukkan email yang valid.';

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      },
      child: const Text(
        'Kirim',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
