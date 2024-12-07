import 'package:nowa_runtime/nowa_runtime.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:session_hive/firebase/collections.dart';
import 'package:session_hive/firebase/firebase.dart';

@NowaGenerated()
class FirestoreService {
  factory FirestoreService() {
    return _instance;
  }

  FirestoreService._();

  static final FirestoreService _instance = FirestoreService._();

  static Stream<QuerySnapshot<sessions>> fetchPublicSessions() {
    return FirebaseService.firestore
        .collection('sessions')
        .withConverter<sessions>(
            fromFirestore: (snapshot, _) =>
                sessions.fromJson(json: snapshot.data()!),
            toFirestore: (objSessions, _) => objSessions.toJson())
        .where('public', isEqualTo: true)
        .where('ended', isEqualTo: false)
        .snapshots();
  }
}
