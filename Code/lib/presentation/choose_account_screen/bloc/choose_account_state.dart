// ignore_for_file: must_be_immutable

part of 'choose_account_bloc.dart';

/// Represents the state of ChooseAccount in the application.
class ChooseAccountState extends Equatable {
  ChooseAccountState({this.chooseAccountModelObj});

  ChooseAccountModel? chooseAccountModelObj;

  @override
  List<Object?> get props => [
        chooseAccountModelObj,
      ];
  ChooseAccountState copyWith({ChooseAccountModel? chooseAccountModelObj}) {
    return ChooseAccountState(
      chooseAccountModelObj:
          chooseAccountModelObj ?? this.chooseAccountModelObj,
    );
  }
}
