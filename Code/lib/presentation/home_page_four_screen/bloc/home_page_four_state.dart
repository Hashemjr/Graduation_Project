// ignore_for_file: must_be_immutable

part of 'home_page_four_bloc.dart';

/// Represents the state of HomePageFour in the application.
class HomePageFourState extends Equatable {
  HomePageFourState({
    this.userNameController,
    this.passwordController,
    this.homePageFourModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageFourModel? homePageFourModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        homePageFourModelObj,
      ];
  HomePageFourState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    HomePageFourModel? homePageFourModelObj,
  }) {
    return HomePageFourState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      homePageFourModelObj: homePageFourModelObj ?? this.homePageFourModelObj,
    );
  }
}
