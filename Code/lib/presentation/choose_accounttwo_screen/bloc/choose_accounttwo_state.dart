// ignore_for_file: must_be_immutable

part of 'choose_accounttwo_bloc.dart';

/// Represents the state of ChooseAccounttwo in the application.
class ChooseAccounttwoState extends Equatable {
  ChooseAccounttwoState({this.chooseAccounttwoModelObj});

  ChooseAccounttwoModel? chooseAccounttwoModelObj;

  @override
  List<Object?> get props => [
        chooseAccounttwoModelObj,
      ];
  ChooseAccounttwoState copyWith(
      {ChooseAccounttwoModel? chooseAccounttwoModelObj}) {
    return ChooseAccounttwoState(
      chooseAccounttwoModelObj:
          chooseAccounttwoModelObj ?? this.chooseAccounttwoModelObj,
    );
  }
}
