import '../../../core/app_export.dart';

/// This class is used in the [view_item_widget] screen.
class ViewItemModel {
  ViewItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
