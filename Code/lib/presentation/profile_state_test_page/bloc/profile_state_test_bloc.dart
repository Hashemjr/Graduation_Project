import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/medalliontilelist_item_model.dart';
import 'package:chineasy/presentation/profile_state_test_page/models/profile_state_test_model.dart';
part 'profile_state_test_event.dart';
part 'profile_state_test_state.dart';

/// A bloc that manages the state of a ProfileStateTest according to the event that is dispatched to it.
class ProfileStateTestBloc
    extends Bloc<ProfileStateTestEvent, ProfileStateTestState> {
  ProfileStateTestBloc(ProfileStateTestState initialState)
      : super(initialState) {
    on<ProfileStateTestInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileStateTestInitialEvent event,
    Emitter<ProfileStateTestState> emit,
  ) async {
    emit(state.copyWith(
        profileStateTestModelObj: state.profileStateTestModelObj?.copyWith(
      medalliontilelistItemList: fillMedalliontilelistItemList(),
    )));
  }

  List<MedalliontilelistItemModel> fillMedalliontilelistItemList() {
    return [
      MedalliontilelistItemModel(
          imageId: ImageConstant.imgMedallions,
          courseName: "Essential Mandarin Course"),
      MedalliontilelistItemModel(
          imageId: ImageConstant.imgMedallionsBlack900,
          courseName: "Advanced Mandarin Proficiency")
    ];
  }
}
