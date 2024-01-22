// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.userNameController,
    this.passwordController,
    this.sliderIndex = 0,
    this.homeModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomeModel? homeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        sliderIndex,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    int? sliderIndex,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
