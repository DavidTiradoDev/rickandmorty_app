// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBEy0Bb5_l2msA4juIJmHrPBK7A-xya4cY',
    appId: '1:619997863619:web:e40c46fe4843f63f194c76',
    messagingSenderId: '619997863619',
    projectId: 'rickandmorty-api-2743d',
    authDomain: 'rickandmorty-api-2743d.firebaseapp.com',
    storageBucket: 'rickandmorty-api-2743d.appspot.com',
    measurementId: 'G-SK4QLCNVSF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5sCxjFCfBnHEr9W3k-4BqFdYeyDrodvo',
    appId: '1:619997863619:android:ef3c6a8ad958fd5d194c76',
    messagingSenderId: '619997863619',
    projectId: 'rickandmorty-api-2743d',
    storageBucket: 'rickandmorty-api-2743d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAw3lp-jybsZlQynwMOuzeCqqnb4FMQFes',
    appId: '1:619997863619:ios:70ebc8dbe053ebcb194c76',
    messagingSenderId: '619997863619',
    projectId: 'rickandmorty-api-2743d',
    storageBucket: 'rickandmorty-api-2743d.appspot.com',
    iosBundleId: 'com.example.rickAndMortyApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAw3lp-jybsZlQynwMOuzeCqqnb4FMQFes',
    appId: '1:619997863619:ios:94c9caa2212f9935194c76',
    messagingSenderId: '619997863619',
    projectId: 'rickandmorty-api-2743d',
    storageBucket: 'rickandmorty-api-2743d.appspot.com',
    iosBundleId: 'com.example.rickAndMortyApp.RunnerTests',
  );
}
