// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'view_item_model.dart';

/// This class defines the variables used in the [home_page_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageTwoModel extends Equatable {
  HomePageTwoModel({this.viewItemList = const []}) {}

  List<ViewItemModel> viewItemList;

  HomePageTwoModel copyWith({List<ViewItemModel>? viewItemList}) {
    return HomePageTwoModel(
      viewItemList: viewItemList ?? this.viewItemList,
    );
  }

  @override
  List<Object?> get props => [viewItemList];
}
