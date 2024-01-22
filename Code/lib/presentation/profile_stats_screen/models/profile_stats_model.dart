// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'medalliontile_item_model.dart';

/// This class defines the variables used in the [profile_stats_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileStatsModel extends Equatable {
  ProfileStatsModel({this.medalliontileItemList = const []}) {}

  List<MedalliontileItemModel> medalliontileItemList;

  ProfileStatsModel copyWith(
      {List<MedalliontileItemModel>? medalliontileItemList}) {
    return ProfileStatsModel(
      medalliontileItemList:
          medalliontileItemList ?? this.medalliontileItemList,
    );
  }

  @override
  List<Object?> get props => [medalliontileItemList];
}
