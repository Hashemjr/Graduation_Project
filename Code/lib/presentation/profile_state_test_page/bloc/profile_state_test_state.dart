// ignore_for_file: must_be_immutable

part of 'profile_state_test_bloc.dart';

/// Represents the state of ProfileStateTest in the application.
class ProfileStateTestState extends Equatable {
  ProfileStateTestState({this.profileStateTestModelObj});

  ProfileStateTestModel? profileStateTestModelObj;

  @override
  List<Object?> get props => [
        profileStateTestModelObj,
      ];
  ProfileStateTestState copyWith(
      {ProfileStateTestModel? profileStateTestModelObj}) {
    return ProfileStateTestState(
      profileStateTestModelObj:
          profileStateTestModelObj ?? this.profileStateTestModelObj,
    );
  }
}
