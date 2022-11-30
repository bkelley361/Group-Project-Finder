import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get description;

  String? get previousProjects;

  String? get projectIdea;

  @BuiltValueField(wireName: 'EnrolledClasses')
  String? get enrolledClasses;

  @BuiltValueField(wireName: 'Matches')
  BuiltList<String>? get matches;

  @BuiltValueField(wireName: 'Rejects')
  BuiltList<String>? get rejects;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..photoUrl = ''
    ..description = ''
    ..previousProjects = ''
    ..projectIdea = ''
    ..enrolledClasses = ''
    ..matches = ListBuilder()
    ..rejects = ListBuilder()
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? photoUrl,
  String? description,
  String? previousProjects,
  String? projectIdea,
  String? enrolledClasses,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..uid = uid
        ..createdTime = createdTime
        ..photoUrl = photoUrl
        ..description = description
        ..previousProjects = previousProjects
        ..projectIdea = projectIdea
        ..enrolledClasses = enrolledClasses
        ..matches = null
        ..rejects = null
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
