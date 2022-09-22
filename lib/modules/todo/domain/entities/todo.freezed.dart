// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Todo {
  Uid get uid => throw _privateConstructorUsedError;
  ITodoTitle get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  ITodoDescription? get description => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call(
      {Uid uid,
      ITodoTitle title,
      bool isDone,
      ITodoDescription? description,
      DateTime? time,
      DateTime? createdAt});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? description = freezed,
    Object? time = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ITodoTitle,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as ITodoDescription?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$_TodoCopyWith(_$_Todo value, $Res Function(_$_Todo) then) =
      __$$_TodoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uid uid,
      ITodoTitle title,
      bool isDone,
      ITodoDescription? description,
      DateTime? time,
      DateTime? createdAt});
}

/// @nodoc
class __$$_TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$$_TodoCopyWith<$Res> {
  __$$_TodoCopyWithImpl(_$_Todo _value, $Res Function(_$_Todo) _then)
      : super(_value, (v) => _then(v as _$_Todo));

  @override
  _$_Todo get _value => super._value as _$_Todo;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? description = freezed,
    Object? time = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Todo(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as Uid,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ITodoTitle,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as ITodoDescription?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Todo implements _Todo {
  const _$_Todo(
      {required this.uid,
      required this.title,
      required this.isDone,
      this.description,
      this.time,
      this.createdAt});

  @override
  final Uid uid;
  @override
  final ITodoTitle title;
  @override
  final bool isDone;
  @override
  final ITodoDescription? description;
  @override
  final DateTime? time;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Todo(uid: $uid, title: $title, isDone: $isDone, description: $description, time: $time, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Todo &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_TodoCopyWith<_$_Todo> get copyWith =>
      __$$_TodoCopyWithImpl<_$_Todo>(this, _$identity);
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {required final Uid uid,
      required final ITodoTitle title,
      required final bool isDone,
      final ITodoDescription? description,
      final DateTime? time,
      final DateTime? createdAt}) = _$_Todo;

  @override
  Uid get uid;
  @override
  ITodoTitle get title;
  @override
  bool get isDone;
  @override
  ITodoDescription? get description;
  @override
  DateTime? get time;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCopyWith<_$_Todo> get copyWith => throw _privateConstructorUsedError;
}
