// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'furniture_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FurnitureItem {
  String get title => throw _privateConstructorUsedError;
  String get stock => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  List<Color> get colors => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FurnitureItemCopyWith<FurnitureItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FurnitureItemCopyWith<$Res> {
  factory $FurnitureItemCopyWith(
          FurnitureItem value, $Res Function(FurnitureItem) then) =
      _$FurnitureItemCopyWithImpl<$Res, FurnitureItem>;
  @useResult
  $Res call(
      {String title,
      String stock,
      String price,
      List<Color> colors,
      String img});
}

/// @nodoc
class _$FurnitureItemCopyWithImpl<$Res, $Val extends FurnitureItem>
    implements $FurnitureItemCopyWith<$Res> {
  _$FurnitureItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? stock = null,
    Object? price = null,
    Object? colors = null,
    Object? img = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FurnitureItemCopyWith<$Res>
    implements $FurnitureItemCopyWith<$Res> {
  factory _$$_FurnitureItemCopyWith(
          _$_FurnitureItem value, $Res Function(_$_FurnitureItem) then) =
      __$$_FurnitureItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String stock,
      String price,
      List<Color> colors,
      String img});
}

/// @nodoc
class __$$_FurnitureItemCopyWithImpl<$Res>
    extends _$FurnitureItemCopyWithImpl<$Res, _$_FurnitureItem>
    implements _$$_FurnitureItemCopyWith<$Res> {
  __$$_FurnitureItemCopyWithImpl(
      _$_FurnitureItem _value, $Res Function(_$_FurnitureItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? stock = null,
    Object? price = null,
    Object? colors = null,
    Object? img = null,
  }) {
    return _then(_$_FurnitureItem(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FurnitureItem implements _FurnitureItem {
  const _$_FurnitureItem(
      {required this.title,
      required this.stock,
      required this.price,
      required final List<Color> colors,
      required this.img})
      : _colors = colors;

  @override
  final String title;
  @override
  final String stock;
  @override
  final String price;
  final List<Color> _colors;
  @override
  List<Color> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  final String img;

  @override
  String toString() {
    return 'FurnitureItem(title: $title, stock: $stock, price: $price, colors: $colors, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FurnitureItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, stock, price,
      const DeepCollectionEquality().hash(_colors), img);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FurnitureItemCopyWith<_$_FurnitureItem> get copyWith =>
      __$$_FurnitureItemCopyWithImpl<_$_FurnitureItem>(this, _$identity);
}

abstract class _FurnitureItem implements FurnitureItem {
  const factory _FurnitureItem(
      {required final String title,
      required final String stock,
      required final String price,
      required final List<Color> colors,
      required final String img}) = _$_FurnitureItem;

  @override
  String get title;
  @override
  String get stock;
  @override
  String get price;
  @override
  List<Color> get colors;
  @override
  String get img;
  @override
  @JsonKey(ignore: true)
  _$$_FurnitureItemCopyWith<_$_FurnitureItem> get copyWith =>
      throw _privateConstructorUsedError;
}
