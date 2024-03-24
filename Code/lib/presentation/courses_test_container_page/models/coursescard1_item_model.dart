import '../../../core/app_export.dart';

/// This class is used in the [coursescard1_item_widget] screen.
class Coursescard1ItemModel {
  Coursescard1ItemModel({
    this.userText,
    this.courseImage,
    this.courseText,
    this.commonText,
    this.id,
    this.userText1,
    this.courseImage1,
    this.courseText1,
    this.commonText1,
    this.id1,
    this.userText2,
    this.courseImage2,
    this.courseText2,
    this.commonText2,
    this.id2,
  }) {
    userText = userText ?? "+90";
    courseImage = courseImage ?? ImageConstant.imgBackground1;
    courseText = courseText ?? "beginner course ";
    commonText = commonText ?? "common";
    id = id ?? "";
    userText1 = userText1 ?? "+30";
    courseImage1 = courseImage1 ?? ImageConstant.imgcourse2;
    courseText1 = courseText1 ?? "advanced course";
    commonText1 = commonText1 ?? "";
    id1 = id1 ?? "";
    userText2 = userText2 ?? "+96";
    courseImage2 = courseImage2 ?? ImageConstant.imgHandDrawnCart;
    courseText2 = courseText2 ?? "Travel  course";
    commonText2 = commonText2 ?? "";
    id2 = id2 ?? "";
  }

  String? userText;

  String? courseImage;

  String? courseText;

  String? commonText;

  String? id;

  String? userText1;

  String? courseImage1;

  String? courseText1;

  String? commonText1;

  String? id1; 

  String? userText2;

  String? courseImage2;

  String? courseText2;

  String? commonText2;

  String? id2;
}
