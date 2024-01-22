import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.foodText,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgFpdl5;
    foodText = foodText ?? "food";
    id = id ?? "";
  }

  String? userImage;

  String? foodText;

  String? id;
}
