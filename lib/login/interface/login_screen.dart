import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: size.height * 0.05,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/rickandmorty.png'),
                  ),
                ),
                width: double.infinity,
                height: size.height * 0.3,
              ),
              Text(
                'Iniciar sesión',
                style: GoogleFonts.creepster(
                  color: const Color(0xFF7BD3EA),
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                // controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text(
                    'Correo',
                    style: GoogleFonts.nunito(),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                // controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text(
                    'Contraseña',
                    style: GoogleFonts.nunito(),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFF7BD3EA),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: GoogleFonts.nunito(color: Colors.white, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {},
                child: Text(
                  'Crear una cuenta',
                  style: GoogleFonts.nunito(color: Colors.white, fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
