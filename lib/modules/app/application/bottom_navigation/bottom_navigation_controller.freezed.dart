// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_controller.dart';

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
    required TResult Function(int index, BuildContext context) pageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index, BuildContext context)? pageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index, BuildContext context)? pageUpdated,
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
    required TResult Function(int index, BuildContext context) pageUpdated,
  }) {
    return indexSet(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index, BuildContext context)? pageUpdated,
  }) {
    return indexSet?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index, BuildContext context)? pageUpdated,
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
  $Res call({int index, BuildContext context});
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
    Object? context = freezed,
  }) {
    return _then(_$PageUpdated(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$PageUpdated implements PageUpdated {
  const _$PageUpdated(this.index, this.context);

  @override
  final int index;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'BottomNavigationEvent.pageUpdated(index: $index, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageUpdated &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$PageUpdatedCopyWith<_$PageUpdated> get copyWith =>
      __$$PageUpdatedCopyWithImpl<_$PageUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexSet,
    required TResult Function(int index, BuildContext context) pageUpdated,
  }) {
    return pageUpdated(index, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index, BuildContext context)? pageUpdated,
  }) {
    return pageUpdated?.call(index, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexSet,
    TResult Function(int index, BuildContext context)? pageUpdated,
    required TResult orElse(),
  }) {
    if (pageUpdated != null) {
      return pageUpdated(index, context);
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
  const factory PageUpdated(final int index, final BuildContext context) =
      _$PageUpdated;

  @override
  int get index;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$PageUpdatedCopyWith<_$PageUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavigationState {
  int get currentIndex => throw _privateConstructorUsedError;
  Widget? get page => throw _privateConstructorUsedError;
  List<BottomNavigation> get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, Widget? page, List<BottomNavigation> pages});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? page = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigation>,
    ));
  }
}

/// @nodoc
abstract class _$$_BottomNavigationStateCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$_BottomNavigationStateCopyWith(_$_BottomNavigationState value,
          $Res Function(_$_BottomNavigationState) then) =
      __$$_BottomNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex, Widget? page, List<BottomNavigation> pages});
}

/// @nodoc
class __$$_BottomNavigationStateCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$$_BottomNavigationStateCopyWith<$Res> {
  __$$_BottomNavigationStateCopyWithImpl(_$_BottomNavigationState _value,
      $Res Function(_$_BottomNavigationState) _then)
      : super(_value, (v) => _then(v as _$_BottomNavigationState));

  @override
  _$_BottomNavigationState get _value =>
      super._value as _$_BottomNavigationState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? page = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$_BottomNavigationState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget?,
      pages: pages == freezed
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigation>,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationState implements _BottomNavigationState {
  const _$_BottomNavigationState(
      {required this.currentIndex,
      required this.page,
      required final List<BottomNavigation> pages})
      : _pages = pages;

  @override
  final int currentIndex;
  @override
  final Widget? page;
  final List<BottomNavigation> _pages;
  @override
  List<BottomNavigation> get pages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'BottomNavigationState(currentIndex: $currentIndex, page: $page, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      __$$_BottomNavigationStateCopyWithImpl<_$_BottomNavigationState>(
          this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState(
      {required final int currentIndex,
      required final Widget? page,
      required final List<BottomNavigation> pages}) = _$_BottomNavigationState;

  @override
  int get currentIndex;
  @override
  Widget? get page;
  @override
  List<BottomNavigation> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
