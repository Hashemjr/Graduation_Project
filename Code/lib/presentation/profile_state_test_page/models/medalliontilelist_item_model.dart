import '../../../core/app_export.dart';

/// This class is used in the [medalliontilelist_item_widget] screen.
class MedalliontilelistItemModel {
  MedalliontilelistItemModel({
    this.imageId,
    this.courseName,
    this.id,
  }) {
    imageId = imageId ?? ImageConstant.imgMedallions;
    courseName = courseName ?? "Essential Mandarin Course";
    id = id ?? "";
  }

  String? imageId;

  String? courseName;

  String? id;
}
