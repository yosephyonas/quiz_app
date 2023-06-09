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
    apiKey: 'AIzaSyB-eRsHfuJS_-OXHxE8gX7FJd8EW-Bi8OQ',
    appId: '1:87252925086:web:139d00fd51a5a0e2c1d98f',
    messagingSenderId: '87252925086',
    projectId: 'quizzy-project',
    authDomain: 'quizzy-project.firebaseapp.com',
    storageBucket: 'quizzy-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1jDjXXop1LVYMrXJ45r7Bsu8bb3FnbNs',
    appId: '1:87252925086:android:bbb41f4802d97f76c1d98f',
    messagingSenderId: '87252925086',
    projectId: 'quizzy-project',
    storageBucket: 'quizzy-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyRCFYXsI8kUovmE16zzslZ-KtfNg6dQ0',
    appId: '1:87252925086:ios:882cd0e3a477673fc1d98f',
    messagingSenderId: '87252925086',
    projectId: 'quizzy-project',
    storageBucket: 'quizzy-project.appspot.com',
    iosClientId: '87252925086-k764o4d605urom8lr9gsho0hrvb7odoh.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizzy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyRCFYXsI8kUovmE16zzslZ-KtfNg6dQ0',
    appId: '1:87252925086:ios:882cd0e3a477673fc1d98f',
    messagingSenderId: '87252925086',
    projectId: 'quizzy-project',
    storageBucket: 'quizzy-project.appspot.com',
    iosClientId: '87252925086-k764o4d605urom8lr9gsho0hrvb7odoh.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizzy',
  );
}
