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
    apiKey: 'AIzaSyBIc_3zm24tm8nL4D3AZeChtWCDdNad4T0',
    appId: '1:95378317768:web:dcf41946be75514b4ce0fd',
    messagingSenderId: '95378317768',
    projectId: 'studysync-ce1f7',
    authDomain: 'studysync-ce1f7.firebaseapp.com',
    storageBucket: 'studysync-ce1f7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4PlQXg1D_xkC8C9gVibThDyRcxM62VGQ',
    appId: '1:95378317768:android:f8e1a6b1379d319c4ce0fd',
    messagingSenderId: '95378317768',
    projectId: 'studysync-ce1f7',
    storageBucket: 'studysync-ce1f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDti-TaPQ6iK1dK6y52U9i1brhDilcqEZE',
    appId: '1:95378317768:ios:c914e21758e650414ce0fd',
    messagingSenderId: '95378317768',
    projectId: 'studysync-ce1f7',
    storageBucket: 'studysync-ce1f7.appspot.com',
    iosBundleId: 'com.example.studySync',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDti-TaPQ6iK1dK6y52U9i1brhDilcqEZE',
    appId: '1:95378317768:ios:e037c2cba4fb94e14ce0fd',
    messagingSenderId: '95378317768',
    projectId: 'studysync-ce1f7',
    storageBucket: 'studysync-ce1f7.appspot.com',
    iosBundleId: 'com.example.studySync.RunnerTests',
  );
}