import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const android = FirebaseOptions(
    apiKey: 'AIzaSyAKtihuSxVxk4e-scA80aPobiJXrn3wIDY',
    appId: '1:48221978358:ios:d6451dc8c5aa0eb438b6d7',
    messagingSenderId: '48221978358',
    projectId: 'deepple-c5416',
    storageBucket: 'deepple-c5416.firebasestorage.app',
  );

  static const ios = FirebaseOptions(
    apiKey: 'AIzaSyAJFmbSt72-JHUJLqUdcBydjx80FcN1z2s',
    appId: '1:48221978358:ios:d6451dc8c5aa0eb438b6d7',
    messagingSenderId: '48221978358',
    projectId: 'deepple-c5416',
    storageBucket: 'deepple-c5416.firebasestorage.app',
    iosBundleId: 'com.goodmeet.deepple',
  );
}
