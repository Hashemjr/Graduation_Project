// ignore_for_file: must_be_immutable

part of 'profile_leaderboard_bloc.dart';

/// Represents the state of ProfileLeaderboard in the application.
class ProfileLeaderboardState extends Equatable {
  ProfileLeaderboardState({this.profileLeaderboardModelObj});

  ProfileLeaderboardModel? profileLeaderboardModelObj;

  @override
  List<Object?> get props => [
        profileLeaderboardModelObj,
      ];
  ProfileLeaderboardState copyWith(
      {ProfileLeaderboardModel? profileLeaderboardModelObj}) {
    return ProfileLeaderboardState(
      profileLeaderboardModelObj:
          profileLeaderboardModelObj ?? this.profileLeaderboardModelObj,
    );
  }
}
