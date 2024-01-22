// ignore_for_file: must_be_immutable

part of 'home_page_seven_bloc.dart';

/// Represents the state of HomePageSeven in the application.
class HomePageSevenState extends Equatable {
  HomePageSevenState({
    this.userNameController,
    this.passwordController,
    this.homePageSevenModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageSevenModel? homePageSevenModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        homePageSevenModelObj,
      ];
  HomePageSevenState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    HomePageSevenModel? homePageSevenModelObj,
  }) {
    return HomePageSevenState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      homePageSevenModelObj:
          homePageSevenModelObj ?? this.homePageSevenModelObj,
    );
  }
}
