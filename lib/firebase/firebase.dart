import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@NowaGenerated()
class FirebaseService {
  factory FirebaseService() {
    return _instance;
  }

  FirebaseService._();

  static final FirebaseService _instance = FirebaseService._();

  @NowaGenerated({'loader': 'current_user'})
  User? get currentUser {
    return FirebaseAuth.instance.currentUser;
  }

  @NowaGenerated({'loader': 'firestore_getter'})
  static FirebaseFirestore get firestore {
    return FirebaseFirestore.instance;
  }

  @NowaGenerated({'loader': 'firebase_sign_in_with_google'})
  Future<UserCredential> signInWithGoogle() async {
    if (kIsWeb) {
      GoogleAuthProvider googleProvider = GoogleAuthProvider();
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithPopup(googleProvider);
      return userCredential;
    } else {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
  }

  @NowaGenerated({'loader': 'send_password_reset_email'})
  Future<void> sendPasswordResetEmail(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  @NowaGenerated({'loader': 'firebase_sign_in_with_email_and_password'})
  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  @NowaGenerated({'loader': 'firebase_sign_up_with_email_and_password'})
  Future<UserCredential> signUpWithEmailAndPassword(
      String email, String password) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  @NowaGenerated({'loader': 'send_verification_email'})
  Future<void> sendVerificationEmail() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  @NowaGenerated({'loader': 'firebase_is_user_signed_in'})
  bool isUserSignedIn() {
    final currentUser = FirebaseAuth.instance.currentUser;
    return currentUser != null;
  }

  @NowaGenerated({'loader': 'firebase_sign_out'})
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
