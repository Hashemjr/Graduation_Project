import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/profile_leaderboard_screen/models/profile_leaderboard_model.dart';
part 'profile_leaderboard_event.dart';
part 'profile_leaderboard_state.dart';

/// A bloc that manages the state of a ProfileLeaderboard according to the event that is dispatched to it.
class ProfileLeaderboardBloc
    extends Bloc<ProfileLeaderboardEvent, ProfileLeaderboardState> {
  ProfileLeaderboardBloc(ProfileLeaderboardState initialState)
      : super(initialState) {
    on<ProfileLeaderboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileLeaderboardInitialEvent event,
    Emitter<ProfileLeaderboardState> emit,
  ) async {
    emit(state.copyWith(passwordController: TextEditingController()));
  }
}
