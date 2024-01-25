import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/home/domain/home_provider.dart';
import 'package:rick_and_morty_app/home/interface/home_screen.dart';

class HomeInjection {
  HomeInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => HomeProvider(),
      child: const HomeScreen(),
    );
  }
}
