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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDr1xOX0OVoLuTmtEl8EdYPV_sES568SwU',
    appId: '1:1096341500787:web:561cc0649f3821cc434b06',
    messagingSenderId: '1096341500787',
    projectId: 'main-project-44b34',
    authDomain: 'main-project-44b34.firebaseapp.com',
    storageBucket: 'main-project-44b34.appspot.com',
    measurementId: 'G-YPH2H57HXS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaYGju2JmvNWSwzZJu3oUUQDN9oUCNvNc',
    appId: '1:1096341500787:android:d31d2a8d760b9ac4434b06',
    messagingSenderId: '1096341500787',
    projectId: 'main-project-44b34',
    storageBucket: 'main-project-44b34.appspot.com',
  );
}
