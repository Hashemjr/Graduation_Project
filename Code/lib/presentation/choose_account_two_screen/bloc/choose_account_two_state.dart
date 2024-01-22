// ignore_for_file: must_be_immutable

part of 'choose_account_two_bloc.dart';

/// Represents the state of ChooseAccountTwo in the application.
class ChooseAccountTwoState extends Equatable {
  ChooseAccountTwoState({this.chooseAccountTwoModelObj});

  ChooseAccountTwoModel? chooseAccountTwoModelObj;

  @override
  List<Object?> get props => [
        chooseAccountTwoModelObj,
      ];
  ChooseAccountTwoState copyWith(
      {ChooseAccountTwoModel? chooseAccountTwoModelObj}) {
    return ChooseAccountTwoState(
      chooseAccountTwoModelObj:
          chooseAccountTwoModelObj ?? this.chooseAccountTwoModelObj,
    );
  }
}
