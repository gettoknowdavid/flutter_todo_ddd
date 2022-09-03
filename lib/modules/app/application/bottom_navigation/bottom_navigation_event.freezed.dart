// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexSet,
    required TResult Function(int index) pageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index)? pageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index)? pageUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndexSet value) indexSet,
    required TResult Function(PageUpdated value) pageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndexSet value)? indexSet,
    TResult Function(PageUpdated value)? pageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndexSet value)? indexSet,
    TResult Function(PageUpdated value)? pageUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationEventCopyWith<BottomNavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  final BottomNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$IndexSetCopyWith<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  factory _$$IndexSetCopyWith(
          _$IndexSet value, $Res Function(_$IndexSet) then) =
      __$$IndexSetCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$$IndexSetCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
    implements _$$IndexSetCopyWith<$Res> {
  __$$IndexSetCopyWithImpl(_$IndexSet _value, $Res Function(_$IndexSet) _then)
      : super(_value, (v) => _then(v as _$IndexSet));

  @override
  _$IndexSet get _value => super._value as _$IndexSet;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$IndexSet(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IndexSet implements IndexSet {
  const _$IndexSet(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.indexSet(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexSet &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$IndexSetCopyWith<_$IndexSet> get copyWith =>
      __$$IndexSetCopyWithImpl<_$IndexSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexSet,
    required TResult Function(int index) pageUpdated,
  }) {
    return indexSet(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index)? pageUpdated,
  }) {
    return indexSet?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index)? pageUpdated,
    required TResult orElse(),
  }) {
    if (indexSet != null) {
      return indexSet(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndexSet value) indexSet,
    required TResult Function(PageUpdated value) pageUpdated,
  }) {
    return indexSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndexSet value)? indexSet,
    TResult Function(PageUpdated value)? pageUpdated,
  }) {
    return indexSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndexSet value)? indexSet,
    TResult Function(PageUpdated value)? pageUpdated,
    required TResult orElse(),
  }) {
    if (indexSet != null) {
      return indexSet(this);
    }
    return orElse();
  }
}

abstract class IndexSet implements BottomNavigationEvent {
  const factory IndexSet(final int index) = _$IndexSet;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$IndexSetCopyWith<_$IndexSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageUpdatedCopyWith<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  factory _$$PageUpdatedCopyWith(
          _$PageUpdated value, $Res Function(_$PageUpdated) then) =
      __$$PageUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$$PageUpdatedCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
    implements _$$PageUpdatedCopyWith<$Res> {
  __$$PageUpdatedCopyWithImpl(
      _$PageUpdated _value, $Res Function(_$PageUpdated) _then)
      : super(_value, (v) => _then(v as _$PageUpdated));

  @override
  _$PageUpdated get _value => super._value as _$PageUpdated;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$PageUpdated(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageUpdated implements PageUpdated {
  const _$PageUpdated(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.pageUpdated(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageUpdated &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$PageUpdatedCopyWith<_$PageUpdated> get copyWith =>
      __$$PageUpdatedCopyWithImpl<_$PageUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexSet,
    required TResult Function(int index) pageUpdated,
  }) {
    return pageUpdated(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index)? pageUpdated,
  }) {
    return pageUpdated?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index)? pageUpdated,
    required TResult orElse(),
  }) {
    if (pageUpdated != null) {
      return pageUpdated(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndexSet value) indexSet,
    required TResult Function(PageUpdated value) pageUpdated,
  }) {
    return pageUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IndexSet value)? indexSet,
    TResult Function(PageUpdated value)? pageUpdated,
  }) {
    return pageUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndexSet value)? indexSet,
    TResult Function(PageUpdated value)? pageUpdated,
    required TResult orElse(),
  }) {
    if (pageUpdated != null) {
      return pageUpdated(this);
    }
    return orElse();
  }
}

abstract class PageUpdated implements BottomNavigationEvent {
  const factory PageUpdated(final int index) = _$PageUpdated;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$PageUpdatedCopyWith<_$PageUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
