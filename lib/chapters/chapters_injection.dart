import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/chapters/domain/chapters_provider.dart';
import 'package:rick_and_morty_app/chapters/interface/chapters_screen.dart';

class ChaptersInjection {
  ChaptersInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => ChaptersProvider(),
      child: const ChaptersScreen(),
    );
  }
}
