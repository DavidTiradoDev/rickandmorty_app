import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:rick_and_morty_app/chapters_details/domain/chapters_details_provider.dart';
import 'package:rick_and_morty_app/chapters_details/interface/chapters_details_screen.dart';

class ChaptersDetailsInjection {
  ChaptersDetailsInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => ChaptersDetailsProvider(),
      child: const ChaptersDetailsScreen(),
    );
  }
}
