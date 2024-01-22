// ignore_for_file: must_be_immutable

part of 'home_page_one_bloc.dart';

/// Represents the state of HomePageOne in the application.
class HomePageOneState extends Equatable {
  HomePageOneState({
    this.userNameController,
    this.passwordController,
    this.homePageOneModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  HomePageOneModel? homePageOneModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        homePageOneModelObj,
      ];
  HomePageOneState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    HomePageOneModel? homePageOneModelObj,
  }) {
    return HomePageOneState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      homePageOneModelObj: homePageOneModelObj ?? this.homePageOneModelObj,
    );
  }
}
