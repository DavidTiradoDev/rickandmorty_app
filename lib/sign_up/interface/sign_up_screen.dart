import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CREA UNA CUENTA',
          style: GoogleFonts.nunito(),
        ),
      ),
      body: const Center(
        child: Text('SignUpScreen'),
      ),
    );
  }
}
