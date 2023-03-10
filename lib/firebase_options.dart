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
    apiKey: 'AIzaSyBsHW_6wYrNWdwyqgkveY3Y-PAQVV07wsw',
    appId: '1:336331263994:web:4d4de234826347fe1a5e43',
    messagingSenderId: '336331263994',
    projectId: 'flutterchatapp-dc288',
    authDomain: 'flutterchatapp-dc288.firebaseapp.com',
    storageBucket: 'flutterchatapp-dc288.appspot.com',
    measurementId: 'G-N8YMYJLPL1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6AorQlA1MsBv45kB1_rRVlhK-rvM9-5E',
    appId: '1:336331263994:android:e2cbd3ca5d452b221a5e43',
    messagingSenderId: '336331263994',
    projectId: 'flutterchatapp-dc288',
    storageBucket: 'flutterchatapp-dc288.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfJveTcr0I3MSvZ_xiqHOFSGKrtHfI5aI',
    appId: '1:336331263994:ios:d534ea3aa46b3b4e1a5e43',
    messagingSenderId: '336331263994',
    projectId: 'flutterchatapp-dc288',
    storageBucket: 'flutterchatapp-dc288.appspot.com',
    iosClientId: '336331263994-foeurtf1qubgusa63807ff49nk2t7kqg.apps.googleusercontent.com',
    iosBundleId: 'com.oalshokri.chatAppClass',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfJveTcr0I3MSvZ_xiqHOFSGKrtHfI5aI',
    appId: '1:336331263994:ios:d534ea3aa46b3b4e1a5e43',
    messagingSenderId: '336331263994',
    projectId: 'flutterchatapp-dc288',
    storageBucket: 'flutterchatapp-dc288.appspot.com',
    iosClientId: '336331263994-foeurtf1qubgusa63807ff49nk2t7kqg.apps.googleusercontent.com',
    iosBundleId: 'com.oalshokri.chatAppClass',
  );
}
