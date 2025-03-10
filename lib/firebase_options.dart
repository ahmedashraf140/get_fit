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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBXbOmShyS_N2Io31hNvympiv1WbpVon30',
    appId: '1:224728295981:web:63338890f7b1ee6547a6a4',
    messagingSenderId: '224728295981',
    projectId: 'getfit-95e3e',
    authDomain: 'getfit-95e3e.firebaseapp.com',
    storageBucket: 'getfit-95e3e.appspot.com',
    measurementId: 'G-R747J9N6WG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBW_IG9iKiYfUsQ_Fuw1h-gGa-kpsoTiEw',
    appId: '1:224728295981:android:c58142d32c1efa0a47a6a4',
    messagingSenderId: '224728295981',
    projectId: 'getfit-95e3e',
    storageBucket: 'getfit-95e3e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgssXIW8lpSTyP6GIhSHPd2oth0Udm-IM',
    appId: '1:224728295981:ios:2360693fa9b29daa47a6a4',
    messagingSenderId: '224728295981',
    projectId: 'getfit-95e3e',
    storageBucket: 'getfit-95e3e.appspot.com',
    iosClientId: '224728295981-ods3kd4fmg6698ipneh1g8k5lgbrtk94.apps.googleusercontent.com',
    iosBundleId: 'com.example.gettFittt',
  );
}
