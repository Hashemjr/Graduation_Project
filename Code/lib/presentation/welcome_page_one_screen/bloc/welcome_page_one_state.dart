// ignore_for_file: must_be_immutable

part of 'welcome_page_one_bloc.dart';

/// Represents the state of WelcomePageOne in the application.
class WelcomePageOneState extends Equatable {
  WelcomePageOneState({this.welcomePageOneModelObj});

  WelcomePageOneModel? welcomePageOneModelObj;

  @override
  List<Object?> get props => [
        welcomePageOneModelObj,
      ];
  WelcomePageOneState copyWith({WelcomePageOneModel? welcomePageOneModelObj}) {
    return WelcomePageOneState(
      welcomePageOneModelObj:
          welcomePageOneModelObj ?? this.welcomePageOneModelObj,
    );
  }
}
