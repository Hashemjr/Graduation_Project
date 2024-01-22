// ignore_for_file: must_be_immutable

part of 'home_page_three_bloc.dart';

/// Represents the state of HomePageThree in the application.
class HomePageThreeState extends Equatable {
  HomePageThreeState({
    this.userNameController,
    this.passwordController,
    this.homePageThreeModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageThreeModel? homePageThreeModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        homePageThreeModelObj,
      ];
  HomePageThreeState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    HomePageThreeModel? homePageThreeModelObj,
  }) {
    return HomePageThreeState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      homePageThreeModelObj:
          homePageThreeModelObj ?? this.homePageThreeModelObj,
    );
  }
}
