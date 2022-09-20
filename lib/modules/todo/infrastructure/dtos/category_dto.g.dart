// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

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
abstract class CategoryDtoCollectionReference
    implements
        CategoryDtoQuery,
        FirestoreCollectionReference<CategoryDto, CategoryDtoQuerySnapshot> {
  factory CategoryDtoCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$CategoryDtoCollectionReference;

  static CategoryDto fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CategoryDto.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CategoryDto value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CategoryDto> get reference;

  @override
  CategoryDtoDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CategoryDtoDocumentReference> add(CategoryDto value);
}

class _$CategoryDtoCollectionReference extends _$CategoryDtoQuery
    implements CategoryDtoCollectionReference {
  factory _$CategoryDtoCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$CategoryDtoCollectionReference._(
      firestore.collection('categories').withConverter(
            fromFirestore: CategoryDtoCollectionReference.fromFirestore,
            toFirestore: CategoryDtoCollectionReference.toFirestore,
          ),
    );
  }

  _$CategoryDtoCollectionReference._(
    CollectionReference<CategoryDto> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<CategoryDto> get reference =>
      super.reference as CollectionReference<CategoryDto>;

  @override
  CategoryDtoDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CategoryDtoDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CategoryDtoDocumentReference> add(CategoryDto value) {
    return reference
        .add(value)
        .then((ref) => CategoryDtoDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CategoryDtoCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CategoryDtoDocumentReference extends FirestoreDocumentReference<
    CategoryDto, CategoryDtoDocumentSnapshot> {
  factory CategoryDtoDocumentReference(
          DocumentReference<CategoryDto> reference) =
      _$CategoryDtoDocumentReference;

  DocumentReference<CategoryDto> get reference;

  /// A reference to the [CategoryDtoCollectionReference] containing this document.
  CategoryDtoCollectionReference get parent {
    return _$CategoryDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<CategoryDtoDocumentSnapshot> snapshots();

  @override
  Future<CategoryDtoDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String uid,
    String title,
    int color,
    DateTime? createdAt,
    List<Object?> props,
  });

  Future<void> set(CategoryDto value);
}

class _$CategoryDtoDocumentReference
    extends FirestoreDocumentReference<CategoryDto, CategoryDtoDocumentSnapshot>
    implements CategoryDtoDocumentReference {
  _$CategoryDtoDocumentReference(this.reference);

  @override
  final DocumentReference<CategoryDto> reference;

  /// A reference to the [CategoryDtoCollectionReference] containing this document.
  CategoryDtoCollectionReference get parent {
    return _$CategoryDtoCollectionReference(reference.firestore);
  }

  @override
  Stream<CategoryDtoDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return CategoryDtoDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<CategoryDtoDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return CategoryDtoDocumentSnapshot._(
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
    Object? color = _sentinel,
    Object? createdAt = _sentinel,
    Object? props = _sentinel,
  }) async {
    final json = {
      if (uid != _sentinel) "uid": uid as String,
      if (title != _sentinel) "title": title as String,
      if (color != _sentinel) "color": color as int,
      if (createdAt != _sentinel) "createdAt": createdAt as DateTime?,
      if (props != _sentinel) "props": props as List<Object?>,
    };

    return reference.update(json);
  }

  Future<void> set(CategoryDto value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryDtoDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class CategoryDtoDocumentSnapshot
    extends FirestoreDocumentSnapshot<CategoryDto> {
  CategoryDtoDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<CategoryDto> snapshot;

  @override
  CategoryDtoDocumentReference get reference {
    return CategoryDtoDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CategoryDto? data;
}

abstract class CategoryDtoQuery
    implements QueryReference<CategoryDto, CategoryDtoQuerySnapshot> {
  @override
  CategoryDtoQuery limit(int limit);

  @override
  CategoryDtoQuery limitToLast(int limit);

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
  CategoryDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
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
  CategoryDtoQuery whereFieldPath(
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

  CategoryDtoQuery whereDocumentId({
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
  CategoryDtoQuery whereUid({
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
  CategoryDtoQuery whereTitle({
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
  CategoryDtoQuery whereColor({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  CategoryDtoQuery whereCreatedAt({
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
  CategoryDtoQuery whereProps({
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

  CategoryDtoQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  });

  CategoryDtoQuery orderByUid({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  });

  CategoryDtoQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  });

  CategoryDtoQuery orderByColor({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  });

  CategoryDtoQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  });

  CategoryDtoQuery orderByProps({
    bool descending = false,
    List<Object?> startAt,
    List<Object?> startAfter,
    List<Object?> endAt,
    List<Object?> endBefore,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  });
}

class _$CategoryDtoQuery
    extends QueryReference<CategoryDto, CategoryDtoQuerySnapshot>
    implements CategoryDtoQuery {
  _$CategoryDtoQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<CategoryDto> reference;

  CategoryDtoQuerySnapshot _decodeSnapshot(
    QuerySnapshot<CategoryDto> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return CategoryDtoQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<CategoryDtoDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: CategoryDtoDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return CategoryDtoQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<CategoryDtoQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<CategoryDtoQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  CategoryDtoQuery limit(int limit) {
    return _$CategoryDtoQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  CategoryDtoQuery limitToLast(int limit) {
    return _$CategoryDtoQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  CategoryDtoQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  CategoryDtoQuery whereFieldPath(
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
    return _$CategoryDtoQuery(
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

  CategoryDtoQuery whereDocumentId({
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
    return _$CategoryDtoQuery(
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

  CategoryDtoQuery whereUid({
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
    return _$CategoryDtoQuery(
      reference.where(
        _$CategoryDtoFieldMap["uid"]!,
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

  CategoryDtoQuery whereTitle({
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
    return _$CategoryDtoQuery(
      reference.where(
        _$CategoryDtoFieldMap["title"]!,
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

  CategoryDtoQuery whereColor({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$CategoryDtoQuery(
      reference.where(
        _$CategoryDtoFieldMap["color"]!,
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

  CategoryDtoQuery whereCreatedAt({
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
    return _$CategoryDtoQuery(
      reference.where(
        _$CategoryDtoFieldMap["createdAt"]!,
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

  CategoryDtoQuery whereProps({
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
    return _$CategoryDtoQuery(
      reference.where(
        _$CategoryDtoFieldMap["props"]!,
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

  CategoryDtoQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  CategoryDtoQuery orderByUid({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$CategoryDtoFieldMap["uid"]!,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  CategoryDtoQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$CategoryDtoFieldMap["title"]!,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  CategoryDtoQuery orderByColor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$CategoryDtoFieldMap["color"]!,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  CategoryDtoQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$CategoryDtoFieldMap["createdAt"]!,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  CategoryDtoQuery orderByProps({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CategoryDtoDocumentSnapshot? startAtDocument,
    CategoryDtoDocumentSnapshot? endAtDocument,
    CategoryDtoDocumentSnapshot? endBeforeDocument,
    CategoryDtoDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$CategoryDtoFieldMap["props"]!,
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

    return _$CategoryDtoQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$CategoryDtoQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CategoryDtoQuerySnapshot extends FirestoreQuerySnapshot<CategoryDto,
    CategoryDtoQueryDocumentSnapshot> {
  CategoryDtoQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<CategoryDto> snapshot;

  @override
  final List<CategoryDtoQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CategoryDtoDocumentSnapshot>> docChanges;
}

class CategoryDtoQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CategoryDto>
    implements CategoryDtoDocumentSnapshot {
  CategoryDtoQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<CategoryDto> snapshot;

  @override
  CategoryDtoDocumentReference get reference {
    return CategoryDtoDocumentReference(snapshot.reference);
  }

  @override
  final CategoryDto data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
      uid: json['uid'] as String,
      title: json['title'] as String,
      color: json['color'] as int? ?? 1,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

const _$CategoryDtoFieldMap = <String, String>{
  'uid': 'uid',
  'title': 'title',
  'color': 'color',
  'createdAt': 'createdAt',
};

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'color': instance.color,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
