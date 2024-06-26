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
    apiKey: 'AIzaSyCR2Ji_e00IWClouD6lTNCZ7W9RzrrKhx4',
    appId: '1:533717697800:web:147103ec9b8aca957f58bd',
    messagingSenderId: '533717697800',
    projectId: 'day-task-99fdd',
    authDomain: 'day-task-99fdd.firebaseapp.com',
    storageBucket: 'day-task-99fdd.appspot.com',
    measurementId: 'G-421Q0SRSP8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKVI7qZMyVWKmpHdI3vaM1iA43CQu9sOk',
    appId: '1:697522800610:android:11752d6ad1c7b0c26a5bbb',
    messagingSenderId: '697522800610',
    projectId: 'flutter-login-app-77ca0',
    storageBucket: 'day-task-99fdd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDp461yPmo5JejuJYW-bocE22ISCSFZy_0',
    appId: '1:533717697800:ios:e4b9dbfeb2b4ebbc7f58bd',
    messagingSenderId: '533717697800',
    projectId: 'day-task-99fdd',
    storageBucket: 'day-task-99fdd.appspot.com',
    iosBundleId: 'com.example.loginFirebaseComplete',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDp461yPmo5JejuJYW-bocE22ISCSFZy_0',
    appId: '1:533717697800:ios:e4b9dbfeb2b4ebbc7f58bd',
    messagingSenderId: '533717697800',
    projectId: 'day-task-99fdd',
    storageBucket: 'day-task-99fdd.appspot.com',
    iosBundleId: 'com.example.loginFirebaseComplete',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCR2Ji_e00IWClouD6lTNCZ7W9RzrrKhx4',
    appId: '1:533717697800:web:53b5dc85511899237f58bd',
    messagingSenderId: '533717697800',
    projectId: 'day-task-99fdd',
    authDomain: 'day-task-99fdd.firebaseapp.com',
    storageBucket: 'day-task-99fdd.appspot.com',
    measurementId: 'G-7DQ08ZXKP7',
  );
}
