import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:rick_and_morty_app/firebase_options.dart';

import 'package:rick_and_morty_app/login/login_injection.dart';
import 'package:rick_and_morty_app/themes/dark_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    print('Error al inicializar Firebase: $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginInjection.injection(),
      theme: darkTheme,
    );
  }
}
