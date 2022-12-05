import 'package:freezed_annotation/freezed_annotation.dart';

part 'rep_model.freezed.dart';

@freezed
class RepModel with _$RepModel {
  const factory RepModel({
    String? profileImg,
    String? cardTag,
    String? author,
    String? location,
    String? title,
    @Default([]) List<String> imgItems,
  }) = _RepModel;
}
