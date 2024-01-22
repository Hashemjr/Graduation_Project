// ignore_for_file: must_be_immutable

part of 'choose_account_three_bloc.dart';

/// Represents the state of ChooseAccountThree in the application.
class ChooseAccountThreeState extends Equatable {
  ChooseAccountThreeState({this.chooseAccountThreeModelObj});

  ChooseAccountThreeModel? chooseAccountThreeModelObj;

  @override
  List<Object?> get props => [
        chooseAccountThreeModelObj,
      ];
  ChooseAccountThreeState copyWith(
      {ChooseAccountThreeModel? chooseAccountThreeModelObj}) {
    return ChooseAccountThreeState(
      chooseAccountThreeModelObj:
          chooseAccountThreeModelObj ?? this.chooseAccountThreeModelObj,
    );
  }
}
