// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  return _TodoDto.fromJson(json);
}

/// @nodoc
mixin _$TodoDto {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDtoCopyWith<TodoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDtoCopyWith<$Res> {
  factory $TodoDtoCopyWith(TodoDto value, $Res Function(TodoDto) then) =
      _$TodoDtoCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String title,
      bool isDone,
      String? description,
      DateTime? time,
      DateTime? createdAt});
}

/// @nodoc
class _$TodoDtoCopyWithImpl<$Res> implements $TodoDtoCopyWith<$Res> {
  _$TodoDtoCopyWithImpl(this._value, this._then);

  final TodoDto _value;
  // ignore: unused_field
  final $Res Function(TodoDto) _then;

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
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_TodoDtoCopyWith<$Res> implements $TodoDtoCopyWith<$Res> {
  factory _$$_TodoDtoCopyWith(
          _$_TodoDto value, $Res Function(_$_TodoDto) then) =
      __$$_TodoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String title,
      bool isDone,
      String? description,
      DateTime? time,
      DateTime? createdAt});
}

/// @nodoc
class __$$_TodoDtoCopyWithImpl<$Res> extends _$TodoDtoCopyWithImpl<$Res>
    implements _$$_TodoDtoCopyWith<$Res> {
  __$$_TodoDtoCopyWithImpl(_$_TodoDto _value, $Res Function(_$_TodoDto) _then)
      : super(_value, (v) => _then(v as _$_TodoDto));

  @override
  _$_TodoDto get _value => super._value as _$_TodoDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? description = freezed,
    Object? time = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TodoDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_TodoDto implements _TodoDto {
  _$_TodoDto(
      {required this.uid,
      required this.title,
      required this.isDone,
      this.description,
      this.time,
      this.createdAt});

  factory _$_TodoDto.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDtoFromJson(json);

  @override
  final String uid;
  @override
  final String title;
  @override
  final bool isDone;
  @override
  final String? description;
  @override
  final DateTime? time;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TodoDto(uid: $uid, title: $title, isDone: $isDone, description: $description, time: $time, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDto &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
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
  _$$_TodoDtoCopyWith<_$_TodoDto> get copyWith =>
      __$$_TodoDtoCopyWithImpl<_$_TodoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDtoToJson(
      this,
    );
  }
}

abstract class _TodoDto implements TodoDto {
  factory _TodoDto(
      {required final String uid,
      required final String title,
      required final bool isDone,
      final String? description,
      final DateTime? time,
      final DateTime? createdAt}) = _$_TodoDto;

  factory _TodoDto.fromJson(Map<String, dynamic> json) = _$_TodoDto.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  bool get isDone;
  @override
  String? get description;
  @override
  DateTime? get time;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDtoCopyWith<_$_TodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
