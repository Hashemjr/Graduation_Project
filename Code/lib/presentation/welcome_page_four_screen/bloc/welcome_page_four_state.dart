// ignore_for_file: must_be_immutable

part of 'welcome_page_four_bloc.dart';

/// Represents the state of WelcomePageFour in the application.
class WelcomePageFourState extends Equatable {
  WelcomePageFourState({this.welcomePageFourModelObj});

  WelcomePageFourModel? welcomePageFourModelObj;

  @override
  List<Object?> get props => [
        welcomePageFourModelObj,
      ];
  WelcomePageFourState copyWith(
      {WelcomePageFourModel? welcomePageFourModelObj}) {
    return WelcomePageFourState(
      welcomePageFourModelObj:
          welcomePageFourModelObj ?? this.welcomePageFourModelObj,
    );
  }
}
