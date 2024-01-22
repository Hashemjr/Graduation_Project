// ignore_for_file: must_be_immutable

part of 'choose_account_one_bloc.dart';

/// Represents the state of ChooseAccountOne in the application.
class ChooseAccountOneState extends Equatable {
  ChooseAccountOneState({this.chooseAccountOneModelObj});

  ChooseAccountOneModel? chooseAccountOneModelObj;

  @override
  List<Object?> get props => [
        chooseAccountOneModelObj,
      ];
  ChooseAccountOneState copyWith(
      {ChooseAccountOneModel? chooseAccountOneModelObj}) {
    return ChooseAccountOneState(
      chooseAccountOneModelObj:
          chooseAccountOneModelObj ?? this.chooseAccountOneModelObj,
    );
  }
}
