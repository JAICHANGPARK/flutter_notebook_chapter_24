import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cwa_model.freezed.dart';

@freezed
class CwaModel with _$CwaModel {
  factory CwaModel(
    IconData? iconData,
    String? title,
    Color? color,
  ) = _CwaModel;
}
