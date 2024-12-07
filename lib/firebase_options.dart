import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:firebase_core/firebase_core.dart';

@NowaGenerated()
class DefaultFirebaseOptions {
  static FirebaseOptions web = const FirebaseOptions(
    apiKey: 'AIzaSyDiYnLyvDcQfxfuL-mlIybcbMbh0jH9W1E',
    appId: '1:698348648054:web:0ade8cbf4193b86ecb9157',
    messagingSenderId: '698348648054',
    projectId: 'sessionhive-7',
    authDomain: 'sessionhive-7.firebaseapp.com',
    storageBucket: 'sessionhive-7.firebasestorage.app',
    measurementId: 'G-5F67L846RF',
  );

  static FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'AIzaSyBr4oJhV2h8HqEfCI7uC5M7YvLEfab81Ik',
    appId: '1:698348648054:ios:4c022da510c3a063cb9157',
    messagingSenderId: '698348648054',
    projectId: 'sessionhive-7',
    storageBucket: 'sessionhive-7.firebasestorage.app',
    androidClientId: '',
    iosBundleId: 'dev.sagron.sessionhive',
  );

  static FirebaseOptions android = const FirebaseOptions(
    apiKey: 'AIzaSyDx8IzqD-JM3ebSjzH-rwxYACehQpNtGdA',
    appId: '1:698348648054:android:832b170d7e5d85b9cb9157',
    messagingSenderId: '698348648054',
    projectId: 'sessionhive-7',
    storageBucket: 'sessionhive-7.firebasestorage.app',
  );

  static FirebaseOptions? get currentPlatform {
    if (NPlatform.isWeb) {
      return web;
    } else {
      if (NPlatform.isAndroid) {
        return android;
      }
    }
    if (NPlatform.isIOS || NPlatform.isMacOs) {
      return ios;
    }
    return null;
  }
}
