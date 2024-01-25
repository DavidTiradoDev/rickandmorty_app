import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/characters/domain/characters_provider.dart';
import 'package:rick_and_morty_app/characters/interface/characters_screen.dart';

class CharactersInjection {
  CharactersInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => CharactersProvider(),
      child: const CharactersScreen(),
    );
  }
}
