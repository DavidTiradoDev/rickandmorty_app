import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rick_and_morty_app/home/home_injection.dart';
import 'package:rick_and_morty_app/login/domain/login_provider.dart';
import 'package:rick_and_morty_app/sign_up/sign_up_injection.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<LoginProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/portal.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: size.height * 1,
          child: Stack(
            children: [
              Column(
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
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text(
                        'Correo',
                        style: GoogleFonts.nunito(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text(
                        'Contraseña',
                        style: GoogleFonts.nunito(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF7BD3EA),
                      ),
                    ),
                    child: Text(
                      'Entrar',
                      style:
                          GoogleFonts.nunito(color: Colors.black, fontSize: 15),
                    ),
                    onPressed: () {
                      String email = emailController.text;
                      String password = passwordController.text;
                      provider.signIn(email, password).then(
                        (success) {
                          if (success) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeInjection.injection(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Error al iniciar sesión'),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: Text(
                      'Crear una cuenta',
                      style:
                          GoogleFonts.nunito(color: Colors.black, fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpInjection.injection(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
