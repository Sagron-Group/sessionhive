import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

@NowaGenerated({'fbCollectionType': 'fbMainCollection'})
class users {
  @NowaGenerated({'loader': 'auto-constructor'})
  const users(
      {this.display_name = '',
      this.email = '',
      this.user_id = '',
      this.verified_email = false,
      this.avatar_url = ''});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory users.fromJson({required Map<String, dynamic> json}) {
    return users(
      display_name: json['display_name'] ?? '',
      email: json['email'] ?? '',
      user_id: json['user_id'] ?? '',
      verified_email: json['verified_email'] ?? false,
      avatar_url: json['avatar_url'] ?? '',
    );
  }

  final String? display_name;

  final String? email;

  final String? user_id;

  final bool? verified_email;

  final String? avatar_url;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'display_name': display_name,
      'email': email,
      'user_id': user_id,
      'verified_email': verified_email,
      'avatar_url': avatar_url,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  users copyWith(
      {String? display_name,
      String? email,
      String? user_id,
      bool? verified_email,
      String? avatar_url}) {
    return users(
      display_name: display_name ?? this.display_name,
      email: email ?? this.email,
      user_id: user_id ?? this.user_id,
      verified_email: verified_email ?? this.verified_email,
      avatar_url: avatar_url ?? this.avatar_url,
    );
  }
}

@NowaGenerated({'fbCollectionType': 'fbMainCollection'})
class sessions {
  @NowaGenerated({'loader': 'auto-constructor'})
  const sessions(
      {this.title = '',
      this.session_id = '',
      this.public = false,
      this.creation_date,
      this.session_date,
      this.host,
      this.participants = const [null, null, null],
      this.muted_participants = const [null, null, null],
      this.video_off_participants = const [null, null, null],
      this.ended = false});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory sessions.fromJson({required Map<String, dynamic> json}) {
    return sessions(
      title: json['title'] ?? '',
      session_id: json['session_id'] ?? '',
      public: json['public'] ?? false,
      creation_date: json['creation_date'],
      session_date: json['session_date'],
      host: json['host'],
      participants: json['participants']?.cast<DocumentReference?>() ??
          const [null, null, null],
      muted_participants:
          json['muted_participants']?.cast<DocumentReference?>() ??
              const [null, null, null],
      video_off_participants:
          json['video_off_participants']?.cast<DocumentReference?>() ??
              const [null, null, null],
      ended: json['ended'] ?? false,
    );
  }

  final String? title;

  final String? session_id;

  final bool? public;

  final DateTime? creation_date;

  final DateTime? session_date;

  final DocumentReference? host;

  final List<DocumentReference?>? participants;

  final List<DocumentReference?>? muted_participants;

  final List<DocumentReference?>? video_off_participants;

  final bool? ended;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'session_id': session_id,
      'public': public,
      'creation_date': creation_date,
      'session_date': session_date,
      'host': host,
      'participants': participants,
      'muted_participants': muted_participants,
      'video_off_participants': video_off_participants,
      'ended': ended,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  sessions copyWith(
      {String? title,
      String? session_id,
      bool? public,
      DateTime? creation_date,
      DateTime? session_date,
      DocumentReference? host,
      List<DocumentReference?>? participants,
      List<DocumentReference?>? muted_participants,
      List<DocumentReference?>? video_off_participants,
      bool? ended}) {
    return sessions(
      title: title ?? this.title,
      session_id: session_id ?? this.session_id,
      public: public ?? this.public,
      creation_date: creation_date ?? this.creation_date,
      session_date: session_date ?? this.session_date,
      host: host ?? this.host,
      participants: participants ?? this.participants,
      muted_participants: muted_participants ?? this.muted_participants,
      video_off_participants:
          video_off_participants ?? this.video_off_participants,
      ended: ended ?? this.ended,
    );
  }
}
