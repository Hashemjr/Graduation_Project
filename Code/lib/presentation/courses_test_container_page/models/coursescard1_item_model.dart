import '../../../core/app_export.dart';

/// This class is used in the [coursescard1_item_widget] screen.
class Coursescard1ItemModel {
  Coursescard1ItemModel({
    this.userText,
    this.courseImage,
    this.courseText,
    this.commonText,
    this.id,
  }) {
    userText = userText ?? "+90";
    courseImage = courseImage ?? ImageConstant.imgBackground1;
    courseText = courseText ?? "beginner course ";
    commonText = commonText ?? "common";
    id = id ?? "";
  }

  String? userText;

  String? courseImage;

  String? courseText;

  String? commonText;

  String? id;
}
