// ignore_for_file: must_be_immutable

part of 'profile_stats_bloc.dart';

/// Represents the state of ProfileStats in the application.
class ProfileStatsState extends Equatable {
  ProfileStatsState({
    this.userNameController,
    this.passwordController,
    this.profileStatsModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  ProfileStatsModel? profileStatsModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        profileStatsModelObj,
      ];
  ProfileStatsState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    ProfileStatsModel? profileStatsModelObj,
  }) {
    return ProfileStatsState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      profileStatsModelObj: profileStatsModelObj ?? this.profileStatsModelObj,
    );
  }
}
