// ignore_for_file: must_be_immutable

part of 'welcome_page_bloc.dart';

/// Represents the state of WelcomePage in the application.
class WelcomePageState extends Equatable {
  WelcomePageState({this.welcomePageModelObj});

  WelcomePageModel? welcomePageModelObj;

  @override
  List<Object?> get props => [
        welcomePageModelObj,
      ];
  WelcomePageState copyWith({WelcomePageModel? welcomePageModelObj}) {
    return WelcomePageState(
      welcomePageModelObj: welcomePageModelObj ?? this.welcomePageModelObj,
    );
  }
}
