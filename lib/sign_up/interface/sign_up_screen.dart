import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rick_and_morty_app/login/login_injection.dart';
import 'package:rick_and_morty_app/sign_up/domain/sign_up_provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    final signInProvider = Provider.of<SignUpProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xFF7BD3EA),
        title: Text(
          'CREA TU CUENTA',
          style: GoogleFonts.nunito(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: GoogleFonts.nunito(color: Colors.black),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text(
                    'Contraseña',
                    style: GoogleFonts.nunito(color: Colors.black),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: confirmPasswordController,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  label: Text(
                    'Confirmar contraseña',
                    style: GoogleFonts.nunito(color: Colors.black),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  if (password != confirmPassword) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Las contraseñas no coinciden'),
                      ),
                    );
                    return; // Detener la ejecución si las contraseñas no coinciden
                  }
                  signInProvider
                      .signUpWithEmailAndPassword(email, password)
                      .then(
                    (success) {
                      if (success) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginInjection.injection(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Error al registrar'),
                          ),
                        );
                      }
                    },
                  );
                },
                child: Text(
                  'Registrarse',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
