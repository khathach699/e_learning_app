// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBeHTbVS9Ww-HUtfpbD0z35kAN8bA0pilY',
    appId: '1:373886346292:web:7716caf1b30c37cbfd5661',
    messagingSenderId: '373886346292',
    projectId: 'ulearning-app-3b8bc',
    authDomain: 'ulearning-app-3b8bc.firebaseapp.com',
    storageBucket: 'ulearning-app-3b8bc.firebasestorage.app',
    measurementId: 'G-CJQV8DS5XV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPLu_EpZwn_SvWNrwEFj_ztfJiMcAWFmA',
    appId: '1:373886346292:android:2ce6ea488c116392fd5661',
    messagingSenderId: '373886346292',
    projectId: 'ulearning-app-3b8bc',
    storageBucket: 'ulearning-app-3b8bc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbxJ9X27J_TfgHXnrT0DOazGbXrVNF-4k',
    appId: '1:373886346292:ios:f4679fabf46991c3fd5661',
    messagingSenderId: '373886346292',
    projectId: 'ulearning-app-3b8bc',
    storageBucket: 'ulearning-app-3b8bc.firebasestorage.app',
    iosBundleId: 'com.example.eLearningApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbxJ9X27J_TfgHXnrT0DOazGbXrVNF-4k',
    appId: '1:373886346292:ios:f4679fabf46991c3fd5661',
    messagingSenderId: '373886346292',
    projectId: 'ulearning-app-3b8bc',
    storageBucket: 'ulearning-app-3b8bc.firebasestorage.app',
    iosBundleId: 'com.example.eLearningApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBeHTbVS9Ww-HUtfpbD0z35kAN8bA0pilY',
    appId: '1:373886346292:web:96bd67756ad867aefd5661',
    messagingSenderId: '373886346292',
    projectId: 'ulearning-app-3b8bc',
    authDomain: 'ulearning-app-3b8bc.firebaseapp.com',
    storageBucket: 'ulearning-app-3b8bc.firebasestorage.app',
    measurementId: 'G-1K6M46C28E',
  );
}
