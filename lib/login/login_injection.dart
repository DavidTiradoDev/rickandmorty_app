import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/login/domain/login_provider.dart';
import 'package:rick_and_morty_app/login/interface/login_screen.dart';

class LoginInjection {
  LoginInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => LoginProvider(),
      child: const LoginScreen(),
    );
  }
}
