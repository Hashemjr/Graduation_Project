// ignore_for_file: must_be_immutable

part of 'reset_passwordtwo_bloc.dart';

/// Represents the state of ResetPasswordtwo in the application.
class ResetPasswordtwoState extends Equatable {
  ResetPasswordtwoState({this.resetPasswordtwoModelObj});

  ResetPasswordtwoModel? resetPasswordtwoModelObj;

  @override
  List<Object?> get props => [
        resetPasswordtwoModelObj,
      ];
  ResetPasswordtwoState copyWith(
      {ResetPasswordtwoModel? resetPasswordtwoModelObj}) {
    return ResetPasswordtwoState(
      resetPasswordtwoModelObj:
          resetPasswordtwoModelObj ?? this.resetPasswordtwoModelObj,
    );
  }
}
