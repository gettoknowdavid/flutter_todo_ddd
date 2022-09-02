// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationState {
  int get currentIndex => throw _privateConstructorUsedError;
  Widget get widget => throw _privateConstructorUsedError;
  List<BottomNavigation> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, Widget widget, List<BottomNavigation> items});
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
    Object? widget = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
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
  $Res call({int currentIndex, Widget widget, List<BottomNavigation> items});
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
    Object? widget = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_BottomNavigationState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigation>,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationState implements _BottomNavigationState {
  const _$_BottomNavigationState(
      {required this.currentIndex,
      required this.widget,
      required final List<BottomNavigation> items})
      : _items = items;

  @override
  final int currentIndex;
  @override
  final Widget widget;
  final List<BottomNavigation> _items;
  @override
  List<BottomNavigation> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BottomNavigationState(currentIndex: $currentIndex, widget: $widget, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality().equals(other.widget, widget) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(widget),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      __$$_BottomNavigationStateCopyWithImpl<_$_BottomNavigationState>(
          this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState(
      {required final int currentIndex,
      required final Widget widget,
      required final List<BottomNavigation> items}) = _$_BottomNavigationState;

  @override
  int get currentIndex;
  @override
  Widget get widget;
  @override
  List<BottomNavigation> get items;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
