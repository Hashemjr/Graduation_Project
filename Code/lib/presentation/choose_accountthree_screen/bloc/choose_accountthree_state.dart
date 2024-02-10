// ignore_for_file: must_be_immutable

part of 'choose_accountthree_bloc.dart';

/// Represents the state of ChooseAccountthree in the application.
class ChooseAccountthreeState extends Equatable {
  ChooseAccountthreeState({this.chooseAccountthreeModelObj});

  ChooseAccountthreeModel? chooseAccountthreeModelObj;

  @override
  List<Object?> get props => [
        chooseAccountthreeModelObj,
      ];
  ChooseAccountthreeState copyWith(
      {ChooseAccountthreeModel? chooseAccountthreeModelObj}) {
    return ChooseAccountthreeState(
      chooseAccountthreeModelObj:
          chooseAccountthreeModelObj ?? this.chooseAccountthreeModelObj,
    );
  }
}
