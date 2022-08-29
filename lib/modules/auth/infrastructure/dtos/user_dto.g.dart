// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserDtoCollectionReference
    implements
        UserDtoQuery,
        FirestoreCollectionReference<UserDto, UserDtoQuerySnapshot> {
  factory UserDtoCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserDtoCollectionReference;

  static UserDto fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return UserDto.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserDto value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<UserDto> get reference;

  @override
  UserDtoDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDtoDocumentReference> add(UserDto value);
}

class _$UserDtoCollectionReference extends _$UserDtoQuery
    implements UserDtoCollectionReference {
  factory _$UserDtoCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserDtoCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserDtoCollectionReference.fromFirestore,
            toFirestore: UserDtoCollectionReference.toFirestore,
          ),
    );
  }

  _$UserDtoCollectionReference._(
    CollectionReference<UserDto> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<UserDto> get reference =>
      super.reference as CollectionReference<UserDto>;

  @override
  UserDtoDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDtoDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserDtoDocumentReference> add(UserDto value) {
    return reference.add(value).then((ref) => UserDtoDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserDtoCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDtoDocumentReference
    extends FirestoreDocumentReference<UserDto, UserDtoDocumentSnapshot> {
  factory UserDtoDocumentReference(DocumentReference<UserDto> reference) =
      _$UserDtoDocumentReference;

  DocumentReference<UserDto> get reference;

  /// A reference to the [UserDtoCollectionReference] containing this document.
  UserDtoCollectionReference get parent {
    return _$UserDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<UserDtoDocumentSnapshot> snapshots();

  @override
  Future<UserDtoDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> set(UserDto value);
}

class _$UserDtoDocumentReference
    extends FirestoreDocumentReference<UserDto, UserDtoDocumentSnapshot>
    implements UserDtoDocumentReference {
  _$UserDtoDocumentReference(this.reference);

  @override
  final DocumentReference<UserDto> reference;

  /// A reference to the [UserDtoCollectionReference] containing this document.
  UserDtoCollectionReference get parent {
    return _$UserDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<UserDtoDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return UserDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<UserDtoDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return UserDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> set(UserDto value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDtoDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class UserDtoDocumentSnapshot extends FirestoreDocumentSnapshot<UserDto> {
  UserDtoDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<UserDto> snapshot;

  @override
  UserDtoDocumentReference get reference {
    return UserDtoDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserDto? data;
}

abstract class UserDtoQuery
    implements QueryReference<UserDto, UserDtoQuerySnapshot> {
  @override
  UserDtoQuery limit(int limit);

  @override
  UserDtoQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    UserDtoDocumentSnapshot? startAtDocument,
    UserDtoDocumentSnapshot? endAtDocument,
    UserDtoDocumentSnapshot? endBeforeDocument,
    UserDtoDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserDtoQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserDtoQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  UserDtoQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDtoDocumentSnapshot? startAtDocument,
    UserDtoDocumentSnapshot? endAtDocument,
    UserDtoDocumentSnapshot? endBeforeDocument,
    UserDtoDocumentSnapshot? startAfterDocument,
  });
}

class _$UserDtoQuery extends QueryReference<UserDto, UserDtoQuerySnapshot>
    implements UserDtoQuery {
  _$UserDtoQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<UserDto> reference;

  UserDtoQuerySnapshot _decodeSnapshot(
    QuerySnapshot<UserDto> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return UserDtoQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<UserDtoDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: UserDtoDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return UserDtoQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<UserDtoQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<UserDtoQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  UserDtoQuery limit(int limit) {
    return _$UserDtoQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  UserDtoQuery limitToLast(int limit) {
    return _$UserDtoQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  UserDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDtoDocumentSnapshot? startAtDocument,
    UserDtoDocumentSnapshot? endAtDocument,
    UserDtoDocumentSnapshot? endBeforeDocument,
    UserDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$UserDtoQuery(query, _collection);
  }

  UserDtoQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserDtoQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  UserDtoQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserDtoQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  UserDtoQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDtoDocumentSnapshot? startAtDocument,
    UserDtoDocumentSnapshot? endAtDocument,
    UserDtoDocumentSnapshot? endBeforeDocument,
    UserDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$UserDtoQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserDtoQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDtoQuerySnapshot
    extends FirestoreQuerySnapshot<UserDto, UserDtoQueryDocumentSnapshot> {
  UserDtoQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<UserDto> snapshot;

  @override
  final List<UserDtoQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDtoDocumentSnapshot>> docChanges;
}

class UserDtoQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserDto>
    implements UserDtoDocumentSnapshot {
  UserDtoQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<UserDto> snapshot;

  @override
  UserDtoDocumentReference get reference {
    return UserDtoDocumentReference(snapshot.reference);
  }

  @override
  final UserDto data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UserDtoToJson(UserDto instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'name': instance.name,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  return val;
}

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
    };
