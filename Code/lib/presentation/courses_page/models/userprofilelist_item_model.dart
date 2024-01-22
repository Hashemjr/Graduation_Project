import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.common,
    this.beginnerCourse,
    this.numberText,
    this.commonImage,
    this.id,
  }) {
    common = common ?? "common";
    beginnerCourse = beginnerCourse ?? "beginner course ";
    numberText = numberText ?? "+90";
    commonImage = commonImage ?? ImageConstant.imgFpdl3;
    id = id ?? "";
  }

  String? common;

  String? beginnerCourse;

  String? numberText;

  String? commonImage;

  String? id;
}
