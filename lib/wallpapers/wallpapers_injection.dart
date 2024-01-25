import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/wallpapers/domain/wallpapers_provider.dart';
import 'package:rick_and_morty_app/wallpapers/interface/wallpapers_screen.dart';

class WallpapersInjection {
  WallpapersInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => WallpapersProvider(),
      child: const WallpapersScreen(),
    );
  }
}
