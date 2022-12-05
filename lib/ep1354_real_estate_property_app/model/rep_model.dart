import 'package:freezed_annotation/freezed_annotation.dart';


part 'rep_model.freeze.dart';

@freezed
class RepModel with _$RepModel {
  const factory RepModel({
    String? title,
  }) = _RepModel;
}
