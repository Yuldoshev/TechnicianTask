import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_tag.freezed.dart';

@freezed
abstract class CategoryTag with _$CategoryTag {
  const factory CategoryTag({
    required String tag,
    @Default(false) bool isSelected,
  }) = _CategoryTag;
  const CategoryTag._();
}
