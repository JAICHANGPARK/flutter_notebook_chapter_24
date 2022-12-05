import 'package:freezed_annotation/freezed_annotation.dart';



@freezed
class RepModel with _$RepModel {
  const factory RepModel({
    String? title,
  }) = _RepModel;
}
