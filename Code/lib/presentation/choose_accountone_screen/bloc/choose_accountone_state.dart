// ignore_for_file: must_be_immutable

part of 'choose_accountone_bloc.dart';

/// Represents the state of ChooseAccountone in the application.
class ChooseAccountoneState extends Equatable {
  ChooseAccountoneState({this.chooseAccountoneModelObj});

  ChooseAccountoneModel? chooseAccountoneModelObj;

  @override
  List<Object?> get props => [
        chooseAccountoneModelObj,
      ];
  ChooseAccountoneState copyWith(
      {ChooseAccountoneModel? chooseAccountoneModelObj}) {
    return ChooseAccountoneState(
      chooseAccountoneModelObj:
          chooseAccountoneModelObj ?? this.chooseAccountoneModelObj,
    );
  }
}
