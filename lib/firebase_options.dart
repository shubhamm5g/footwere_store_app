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
    apiKey: 'AIzaSyCKvzBQvXNnd64sekL5y0ZGkFisoYj-2_4',
    appId: '1:617030355482:web:35633a41589a4537b35fa3',
    messagingSenderId: '617030355482',
    projectId: 'footwaredb',
    authDomain: 'footwaredb.firebaseapp.com',
    storageBucket: 'footwaredb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCchEk4xMk_1IEWJrPbT7mh12OEMK-FRs',
    appId: '1:617030355482:android:fe270d8a6c4fb33eb35fa3',
    messagingSenderId: '617030355482',
    projectId: 'footwaredb',
    storageBucket: 'footwaredb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAiKQEVwkM23tn885Uabaqku4Alin_lEYQ',
    appId: '1:617030355482:ios:abf2c4894f0f9229b35fa3',
    messagingSenderId: '617030355482',
    projectId: 'footwaredb',
    storageBucket: 'footwaredb.appspot.com',
    iosBundleId: 'com.example.footwereStoreApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAiKQEVwkM23tn885Uabaqku4Alin_lEYQ',
    appId: '1:617030355482:ios:3489fd6c1a73e692b35fa3',
    messagingSenderId: '617030355482',
    projectId: 'footwaredb',
    storageBucket: 'footwaredb.appspot.com',
    iosBundleId: 'com.example.footwereStoreApp.RunnerTests',
  );
}
