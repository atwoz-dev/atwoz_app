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
    apiKey: 'AIzaSyASM-SDzJunJX0AIDz3oMDspAvYRaPuzA8',
    appId: '1:1049288044004:android:f8bef7c1295f7fa0ac2bf1',
    messagingSenderId: '1049288044004',
    projectId: 'atwoz-d63ef',
    storageBucket: 'atwoz-d63ef.firebasestorage.app',
  );

  static const ios = FirebaseOptions(
    apiKey: 'AIzaSyCtXCmlKUzCliCIxjFTLJ_EekCNSFvVbHs',
    appId: '1:1049288044004:ios:c0b0f3f24e4fd48eac2bf1',
    messagingSenderId: '1049288044004',
    projectId: 'atwoz-d63ef',
    storageBucket: 'atwoz-d63ef.firebasestorage.app',
    iosBundleId: 'com.gooemeet.atwoz',
  );
}