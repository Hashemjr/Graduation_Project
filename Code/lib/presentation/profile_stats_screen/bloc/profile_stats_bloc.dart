import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/medalliontile_item_model.dart';
import 'package:grad_project/presentation/profile_stats_screen/models/profile_stats_model.dart';
part 'profile_stats_event.dart';
part 'profile_stats_state.dart';

/// A bloc that manages the state of a ProfileStats according to the event that is dispatched to it.
class ProfileStatsBloc extends Bloc<ProfileStatsEvent, ProfileStatsState> {
  ProfileStatsBloc(ProfileStatsState initialState) : super(initialState) {
    on<ProfileStatsInitialEvent>(_onInitialize);
  }

  List<MedalliontileItemModel> fillMedalliontileItemList() {
    return [
      MedalliontileItemModel(
          courseImage: ImageConstant.imgMedallions,
          courseTitle: "Essential Mandarin Course"),
      MedalliontileItemModel(
          courseImage: ImageConstant.imgMedallionsBlack90001,
          courseTitle: "Advanced Mandarin Proficiency")
    ];
  }

  _onInitialize(
    ProfileStatsInitialEvent event,
    Emitter<ProfileStatsState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        passwordController: TextEditingController()));
    emit(state.copyWith(
        profileStatsModelObj: state.profileStatsModelObj
            ?.copyWith(medalliontileItemList: fillMedalliontileItemList())));
  }
}
