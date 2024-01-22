// ignore_for_file: must_be_immutable

part of 'welcome_page_two_bloc.dart';

/// Represents the state of WelcomePageTwo in the application.
class WelcomePageTwoState extends Equatable {
  WelcomePageTwoState({this.welcomePageTwoModelObj});

  WelcomePageTwoModel? welcomePageTwoModelObj;

  @override
  List<Object?> get props => [
        welcomePageTwoModelObj,
      ];
  WelcomePageTwoState copyWith({WelcomePageTwoModel? welcomePageTwoModelObj}) {
    return WelcomePageTwoState(
      welcomePageTwoModelObj:
          welcomePageTwoModelObj ?? this.welcomePageTwoModelObj,
    );
  }
}
