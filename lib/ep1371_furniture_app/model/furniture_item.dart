import 'package:freezed_annotation/freezed_annotation.dart';

part 'furniture_item.freezed.dart';

@freezed
class FurnitureItem with _$FurnitureItem {
  const factory FurnitureItem({
    required String title,
    required String? stock,
  }) = _FurnitureItem;
}
