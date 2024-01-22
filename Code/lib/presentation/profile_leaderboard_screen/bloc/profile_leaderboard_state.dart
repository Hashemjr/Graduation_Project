// ignore_for_file: must_be_immutable

part of 'profile_leaderboard_bloc.dart';

/// Represents the state of ProfileLeaderboard in the application.
class ProfileLeaderboardState extends Equatable {
  ProfileLeaderboardState({
    this.passwordController,
    this.profileLeaderboardModelObj,
  });

  TextEditingController? passwordController;

  ProfileLeaderboardModel? profileLeaderboardModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        profileLeaderboardModelObj,
      ];
  ProfileLeaderboardState copyWith({
    TextEditingController? passwordController,
    ProfileLeaderboardModel? profileLeaderboardModelObj,
  }) {
    return ProfileLeaderboardState(
      passwordController: passwordController ?? this.passwordController,
      profileLeaderboardModelObj:
          profileLeaderboardModelObj ?? this.profileLeaderboardModelObj,
    );
  }
}
