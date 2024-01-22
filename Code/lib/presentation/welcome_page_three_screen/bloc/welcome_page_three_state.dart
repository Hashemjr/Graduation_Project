// ignore_for_file: must_be_immutable

part of 'welcome_page_three_bloc.dart';

/// Represents the state of WelcomePageThree in the application.
class WelcomePageThreeState extends Equatable {
  WelcomePageThreeState({this.welcomePageThreeModelObj});

  WelcomePageThreeModel? welcomePageThreeModelObj;

  @override
  List<Object?> get props => [
        welcomePageThreeModelObj,
      ];
  WelcomePageThreeState copyWith(
      {WelcomePageThreeModel? welcomePageThreeModelObj}) {
    return WelcomePageThreeState(
      welcomePageThreeModelObj:
          welcomePageThreeModelObj ?? this.welcomePageThreeModelObj,
    );
  }
}
