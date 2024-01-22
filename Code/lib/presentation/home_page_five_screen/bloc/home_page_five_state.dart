// ignore_for_file: must_be_immutable

part of 'home_page_five_bloc.dart';

/// Represents the state of HomePageFive in the application.
class HomePageFiveState extends Equatable {
  HomePageFiveState({
    this.userNameController,
    this.passwordController,
    this.homePageFiveModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageFiveModel? homePageFiveModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        homePageFiveModelObj,
      ];
  HomePageFiveState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    HomePageFiveModel? homePageFiveModelObj,
  }) {
    return HomePageFiveState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      homePageFiveModelObj: homePageFiveModelObj ?? this.homePageFiveModelObj,
    );
  }
}
