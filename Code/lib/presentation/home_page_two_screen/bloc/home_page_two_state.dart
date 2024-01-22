// ignore_for_file: must_be_immutable

part of 'home_page_two_bloc.dart';

/// Represents the state of HomePageTwo in the application.
class HomePageTwoState extends Equatable {
  HomePageTwoState({
    this.userNameController,
    this.passwordController,
    this.sliderIndex = 0,
    this.homePageTwoModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageTwoModel? homePageTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        sliderIndex,
        homePageTwoModelObj,
      ];
  HomePageTwoState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    int? sliderIndex,
    HomePageTwoModel? homePageTwoModelObj,
  }) {
    return HomePageTwoState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homePageTwoModelObj: homePageTwoModelObj ?? this.homePageTwoModelObj,
    );
  }
}
