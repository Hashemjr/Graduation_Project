// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
<<<<<<< HEAD
=======
import '../../../core/app_export.dart';
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
import 'medalliontilelist_item_model.dart';

/// This class defines the variables used in the [profile_state_test_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileStateTestModel extends Equatable {
  ProfileStateTestModel({this.medalliontilelistItemList = const []}) {}

  List<MedalliontilelistItemModel> medalliontilelistItemList;

  ProfileStateTestModel copyWith(
      {List<MedalliontilelistItemModel>? medalliontilelistItemList}) {
    return ProfileStateTestModel(
      medalliontilelistItemList:
          medalliontilelistItemList ?? this.medalliontilelistItemList,
    );
  }

  @override
  List<Object?> get props => [medalliontilelistItemList];
}
