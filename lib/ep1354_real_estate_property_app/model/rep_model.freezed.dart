// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rep_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepModel {
  String? get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepModelCopyWith<RepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepModelCopyWith<$Res> {
  factory $RepModelCopyWith(RepModel value, $Res Function(RepModel) then) =
      _$RepModelCopyWithImpl<$Res, RepModel>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _$RepModelCopyWithImpl<$Res, $Val extends RepModel>
    implements $RepModelCopyWith<$Res> {
  _$RepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepModelCopyWith<$Res> implements $RepModelCopyWith<$Res> {
  factory _$$_RepModelCopyWith(
          _$_RepModel value, $Res Function(_$_RepModel) then) =
      __$$_RepModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$_RepModelCopyWithImpl<$Res>
    extends _$RepModelCopyWithImpl<$Res, _$_RepModel>
    implements _$$_RepModelCopyWith<$Res> {
  __$$_RepModelCopyWithImpl(
      _$_RepModel _value, $Res Function(_$_RepModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_RepModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RepModel implements _RepModel {
  const _$_RepModel({this.title});

  @override
  final String? title;

  @override
  String toString() {
    return 'RepModel(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepModel &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepModelCopyWith<_$_RepModel> get copyWith =>
      __$$_RepModelCopyWithImpl<_$_RepModel>(this, _$identity);
}

abstract class _RepModel implements RepModel {
  const factory _RepModel({final String? title}) = _$_RepModel;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_RepModelCopyWith<_$_RepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
