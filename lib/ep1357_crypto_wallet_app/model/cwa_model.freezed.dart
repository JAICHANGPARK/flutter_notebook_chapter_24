// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cwa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CwaModel {
  IconData? get iconData => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CwaModelCopyWith<CwaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CwaModelCopyWith<$Res> {
  factory $CwaModelCopyWith(CwaModel value, $Res Function(CwaModel) then) =
      _$CwaModelCopyWithImpl<$Res, CwaModel>;
  @useResult
  $Res call({IconData? iconData, String? title, Color? color});
}

/// @nodoc
class _$CwaModelCopyWithImpl<$Res, $Val extends CwaModel>
    implements $CwaModelCopyWith<$Res> {
  _$CwaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = freezed,
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      iconData: freezed == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CwaModelCopyWith<$Res> implements $CwaModelCopyWith<$Res> {
  factory _$$_CwaModelCopyWith(
          _$_CwaModel value, $Res Function(_$_CwaModel) then) =
      __$$_CwaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData? iconData, String? title, Color? color});
}

/// @nodoc
class __$$_CwaModelCopyWithImpl<$Res>
    extends _$CwaModelCopyWithImpl<$Res, _$_CwaModel>
    implements _$$_CwaModelCopyWith<$Res> {
  __$$_CwaModelCopyWithImpl(
      _$_CwaModel _value, $Res Function(_$_CwaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = freezed,
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_CwaModel(
      freezed == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_CwaModel implements _CwaModel {
  _$_CwaModel(this.iconData, this.title, this.color);

  @override
  final IconData? iconData;
  @override
  final String? title;
  @override
  final Color? color;

  @override
  String toString() {
    return 'CwaModel(iconData: $iconData, title: $title, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CwaModel &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CwaModelCopyWith<_$_CwaModel> get copyWith =>
      __$$_CwaModelCopyWithImpl<_$_CwaModel>(this, _$identity);
}

abstract class _CwaModel implements CwaModel {
  factory _CwaModel(
          final IconData? iconData, final String? title, final Color? color) =
      _$_CwaModel;

  @override
  IconData? get iconData;
  @override
  String? get title;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_CwaModelCopyWith<_$_CwaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
