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
    apiKey: 'AIzaSyCaFLAiR05Qoimdc_Sa-6vdQbEueP1HQ-g',
    appId: '1:177061021275:web:d9c0230782fe9f5a09a17e',
    messagingSenderId: '177061021275',
    projectId: 'edureal-3000c',
    authDomain: 'edureal-3000c.firebaseapp.com',
    storageBucket: 'edureal-3000c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXV0Bwq5iVtLX41UsQR1gUlSv2vM9Fhi8',
    appId: '1:177061021275:android:ef34d0c0286540d109a17e',
    messagingSenderId: '177061021275',
    projectId: 'edureal-3000c',
    storageBucket: 'edureal-3000c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAA5_xneLvqR6vxoU_y_pS1157UsyQOWtU',
    appId: '1:177061021275:ios:3b04aa410a8c753f09a17e',
    messagingSenderId: '177061021275',
    projectId: 'edureal-3000c',
    storageBucket: 'edureal-3000c.appspot.com',
    iosClientId: '177061021275-oio40l08aaoa2akhrklgob2vki3l606g.apps.googleusercontent.com',
    iosBundleId: 'com.example.edureal',
  );
}
