// ignore_for_file: must_be_immutable

part of 'home_page_six_bloc.dart';

/// Represents the state of HomePageSix in the application.
class HomePageSixState extends Equatable {
  HomePageSixState({
    this.userNameController,
    this.passwordController,
    this.homePageSixModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageSixModel? homePageSixModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        homePageSixModelObj,
      ];
  HomePageSixState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    HomePageSixModel? homePageSixModelObj,
  }) {
    return HomePageSixState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      homePageSixModelObj: homePageSixModelObj ?? this.homePageSixModelObj,
    );
  }
}
