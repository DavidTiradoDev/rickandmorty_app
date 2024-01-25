import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/characters_details/domain/characters_details_provider.dart';
import 'package:rick_and_morty_app/characters_details/interface/characters_details_screen.dart';

class CharacterDetailsInjection {
  CharacterDetailsInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => CharactersDetailsProvider(),
      child: const CharactersDetailsScreen(),
    );
  }
}
