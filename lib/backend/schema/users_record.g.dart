// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previousProjects;
    if (value != null) {
      result
        ..add('previousProjects')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectIdea;
    if (value != null) {
      result
        ..add('projectIdea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enrolledClasses;
    if (value != null) {
      result
        ..add('EnrolledClasses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.matches;
    if (value != null) {
      result
        ..add('Matches')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.rejects;
    if (value != null) {
      result
        ..add('Rejects')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previousProjects':
          result.previousProjects = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'projectIdea':
          result.projectIdea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EnrolledClasses':
          result.enrolledClasses = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Matches':
          result.matches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Rejects':
          result.rejects.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? photoUrl;
  @override
  final String? description;
  @override
  final String? previousProjects;
  @override
  final String? projectIdea;
  @override
  final String? enrolledClasses;
  @override
  final BuiltList<String>? matches;
  @override
  final BuiltList<String>? rejects;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.uid,
      this.createdTime,
      this.photoUrl,
      this.description,
      this.previousProjects,
      this.projectIdea,
      this.enrolledClasses,
      this.matches,
      this.rejects,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        description == other.description &&
        previousProjects == other.previousProjects &&
        projectIdea == other.projectIdea &&
        enrolledClasses == other.enrolledClasses &&
        matches == other.matches &&
        rejects == other.rejects &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, email.hashCode),
                                                    displayName.hashCode),
                                                uid.hashCode),
                                            createdTime.hashCode),
                                        photoUrl.hashCode),
                                    description.hashCode),
                                previousProjects.hashCode),
                            projectIdea.hashCode),
                        enrolledClasses.hashCode),
                    matches.hashCode),
                rejects.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('description', description)
          ..add('previousProjects', previousProjects)
          ..add('projectIdea', projectIdea)
          ..add('enrolledClasses', enrolledClasses)
          ..add('matches', matches)
          ..add('rejects', rejects)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _previousProjects;
  String? get previousProjects => _$this._previousProjects;
  set previousProjects(String? previousProjects) =>
      _$this._previousProjects = previousProjects;

  String? _projectIdea;
  String? get projectIdea => _$this._projectIdea;
  set projectIdea(String? projectIdea) => _$this._projectIdea = projectIdea;

  String? _enrolledClasses;
  String? get enrolledClasses => _$this._enrolledClasses;
  set enrolledClasses(String? enrolledClasses) =>
      _$this._enrolledClasses = enrolledClasses;

  ListBuilder<String>? _matches;
  ListBuilder<String> get matches =>
      _$this._matches ??= new ListBuilder<String>();
  set matches(ListBuilder<String>? matches) => _$this._matches = matches;

  ListBuilder<String>? _rejects;
  ListBuilder<String> get rejects =>
      _$this._rejects ??= new ListBuilder<String>();
  set rejects(ListBuilder<String>? rejects) => _$this._rejects = rejects;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _description = $v.description;
      _previousProjects = $v.previousProjects;
      _projectIdea = $v.projectIdea;
      _enrolledClasses = $v.enrolledClasses;
      _matches = $v.matches?.toBuilder();
      _rejects = $v.rejects?.toBuilder();
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              uid: uid,
              createdTime: createdTime,
              photoUrl: photoUrl,
              description: description,
              previousProjects: previousProjects,
              projectIdea: projectIdea,
              enrolledClasses: enrolledClasses,
              matches: _matches?.build(),
              rejects: _rejects?.build(),
              phoneNumber: phoneNumber,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matches';
        _matches?.build();
        _$failedField = 'rejects';
        _rejects?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
