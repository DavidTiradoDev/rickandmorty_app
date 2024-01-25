import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/sign_up/domain/sign_up_provider.dart';
import 'package:rick_and_morty_app/sign_up/interface/sign_up_screen.dart';

class SignUpInjection {
  SignUpInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => SignUpProvider(),
      child: const SignUpScreen(),
    );
  }
}
