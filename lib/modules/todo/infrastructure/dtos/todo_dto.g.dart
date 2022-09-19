// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

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
abstract class TodoDtoCollectionReference
    implements
        TodoDtoQuery,
        FirestoreCollectionReference<TodoDto, TodoDtoQuerySnapshot> {
  factory TodoDtoCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$TodoDtoCollectionReference;

  static TodoDto fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return TodoDto.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    TodoDto value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<TodoDto> get reference;

  @override
  TodoDtoDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TodoDtoDocumentReference> add(TodoDto value);
}

class _$TodoDtoCollectionReference extends _$TodoDtoQuery
    implements TodoDtoCollectionReference {
  factory _$TodoDtoCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$TodoDtoCollectionReference._(
      firestore.collection('todos').withConverter(
            fromFirestore: TodoDtoCollectionReference.fromFirestore,
            toFirestore: TodoDtoCollectionReference.toFirestore,
          ),
    );
  }

  _$TodoDtoCollectionReference._(
    CollectionReference<TodoDto> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<TodoDto> get reference =>
      super.reference as CollectionReference<TodoDto>;

  @override
  TodoDtoDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TodoDtoDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TodoDtoDocumentReference> add(TodoDto value) {
    return reference.add(value).then((ref) => TodoDtoDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TodoDtoCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TodoDtoDocumentReference
    extends FirestoreDocumentReference<TodoDto, TodoDtoDocumentSnapshot> {
  factory TodoDtoDocumentReference(DocumentReference<TodoDto> reference) =
      _$TodoDtoDocumentReference;

  DocumentReference<TodoDto> get reference;

  /// A reference to the [TodoDtoCollectionReference] containing this document.
  TodoDtoCollectionReference get parent {
    return _$TodoDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<TodoDtoDocumentSnapshot> snapshots();

  @override
  Future<TodoDtoDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String uid,
    String title,
    bool isDone,
    String? description,
    DateTime? time,
    DateTime? createdAt,
    List<Object?> props,
  });

  Future<void> set(TodoDto value);
}

class _$TodoDtoDocumentReference
    extends FirestoreDocumentReference<TodoDto, TodoDtoDocumentSnapshot>
    implements TodoDtoDocumentReference {
  _$TodoDtoDocumentReference(this.reference);

  @override
  final DocumentReference<TodoDto> reference;

  /// A reference to the [TodoDtoCollectionReference] containing this document.
  TodoDtoCollectionReference get parent {
    return _$TodoDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<TodoDtoDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return TodoDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<TodoDtoDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return TodoDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? uid = _sentinel,
    Object? title = _sentinel,
    Object? isDone = _sentinel,
    Object? description = _sentinel,
    Object? time = _sentinel,
    Object? createdAt = _sentinel,
    Object? props = _sentinel,
  }) async {
    final json = {
      if (uid != _sentinel) "uid": uid as String,
      if (title != _sentinel) "title": title as String,
      if (isDone != _sentinel) "isDone": isDone as bool,
      if (description != _sentinel) "description": description as String?,
      if (time != _sentinel) "time": time as DateTime?,
      if (createdAt != _sentinel) "createdAt": createdAt as DateTime?,
      if (props != _sentinel) "props": props as List<Object?>,
    };

    return reference.update(json);
  }

  Future<void> set(TodoDto value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoDtoDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class TodoDtoDocumentSnapshot extends FirestoreDocumentSnapshot<TodoDto> {
  TodoDtoDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<TodoDto> snapshot;

  @override
  TodoDtoDocumentReference get reference {
    return TodoDtoDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final TodoDto? data;
}

abstract class TodoDtoQuery
    implements QueryReference<TodoDto, TodoDtoQuerySnapshot> {
  @override
  TodoDtoQuery limit(int limit);

  @override
  TodoDtoQuery limitToLast(int limit);

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
  TodoDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
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
  TodoDtoQuery whereFieldPath(
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

  TodoDtoQuery whereDocumentId({
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
  TodoDtoQuery whereUid({
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
  TodoDtoQuery whereTitle({
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
  TodoDtoQuery whereIsDone({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  TodoDtoQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  TodoDtoQuery whereTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });
  TodoDtoQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });
  TodoDtoQuery whereProps({
    List<Object?>? isEqualTo,
    List<Object?>? isNotEqualTo,
    List<Object?>? isLessThan,
    List<Object?>? isLessThanOrEqualTo,
    List<Object?>? isGreaterThan,
    List<Object?>? isGreaterThanOrEqualTo,
    bool? isNull,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
  });

  TodoDtoQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByUid({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByIsDone({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByTime({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });

  TodoDtoQuery orderByProps({
    bool descending = false,
    List<Object?> startAt,
    List<Object?> startAfter,
    List<Object?> endAt,
    List<Object?> endBefore,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  });
}

class _$TodoDtoQuery extends QueryReference<TodoDto, TodoDtoQuerySnapshot>
    implements TodoDtoQuery {
  _$TodoDtoQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<TodoDto> reference;

  TodoDtoQuerySnapshot _decodeSnapshot(
    QuerySnapshot<TodoDto> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return TodoDtoQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<TodoDtoDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: TodoDtoDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return TodoDtoQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<TodoDtoQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<TodoDtoQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  TodoDtoQuery limit(int limit) {
    return _$TodoDtoQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  TodoDtoQuery limitToLast(int limit) {
    return _$TodoDtoQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  TodoDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery whereFieldPath(
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
    return _$TodoDtoQuery(
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

  TodoDtoQuery whereDocumentId({
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
    return _$TodoDtoQuery(
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

  TodoDtoQuery whereUid({
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
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["uid"]!,
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

  TodoDtoQuery whereTitle({
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
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["title"]!,
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

  TodoDtoQuery whereIsDone({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["isDone"]!,
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

  TodoDtoQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["description"]!,
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

  TodoDtoQuery whereTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["time"]!,
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

  TodoDtoQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["createdAt"]!,
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

  TodoDtoQuery whereProps({
    List<Object?>? isEqualTo,
    List<Object?>? isNotEqualTo,
    List<Object?>? isLessThan,
    List<Object?>? isLessThanOrEqualTo,
    List<Object?>? isGreaterThan,
    List<Object?>? isGreaterThanOrEqualTo,
    bool? isNull,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
  }) {
    return _$TodoDtoQuery(
      reference.where(
        _$TodoDtoFieldMap["props"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  TodoDtoQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByUid({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$TodoDtoFieldMap["uid"]!, descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$TodoDtoFieldMap["title"]!, descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByIsDone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$TodoDtoFieldMap["isDone"]!, descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$TodoDtoFieldMap["description"]!,
        descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$TodoDtoFieldMap["time"]!, descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$TodoDtoFieldMap["createdAt"]!,
        descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  TodoDtoQuery orderByProps({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TodoDtoDocumentSnapshot? startAtDocument,
    TodoDtoDocumentSnapshot? endAtDocument,
    TodoDtoDocumentSnapshot? endBeforeDocument,
    TodoDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$TodoDtoFieldMap["props"]!, descending: descending);

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

    return _$TodoDtoQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$TodoDtoQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TodoDtoQuerySnapshot
    extends FirestoreQuerySnapshot<TodoDto, TodoDtoQueryDocumentSnapshot> {
  TodoDtoQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<TodoDto> snapshot;

  @override
  final List<TodoDtoQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TodoDtoDocumentSnapshot>> docChanges;
}

class TodoDtoQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<TodoDto>
    implements TodoDtoDocumentSnapshot {
  TodoDtoQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<TodoDto> snapshot;

  @override
  TodoDtoDocumentReference get reference {
    return TodoDtoDocumentReference(snapshot.reference);
  }

  @override
  final TodoDto data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) => TodoDto(
      uid: json['uid'] as String,
      title: json['title'] as String,
      isDone: json['isDone'] as bool? ?? false,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

const _$TodoDtoFieldMap = <String, String>{
  'uid': 'uid',
  'title': 'title',
  'isDone': 'isDone',
  'description': 'description',
  'category': 'category',
  'time': 'time',
  'createdAt': 'createdAt',
};

Map<String, dynamic> _$TodoDtoToJson(TodoDto instance) => <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'isDone': instance.isDone,
      'description': instance.description,
      'category': instance.category?.toJson(),
      'time': instance.time?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
