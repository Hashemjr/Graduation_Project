import '../../../core/app_export.dart';

/// This class is used in the [medalliontile_item_widget] screen.
class MedalliontileItemModel {
  MedalliontileItemModel({
    this.courseImage,
    this.courseTitle,
    this.id,
  }) {
    courseImage = courseImage ?? ImageConstant.imgMedallions;
    courseTitle = courseTitle ?? "Essential Mandarin Course";
    id = id ?? "";
  }

  String? courseImage;

  String? courseTitle;

  String? id;
}
