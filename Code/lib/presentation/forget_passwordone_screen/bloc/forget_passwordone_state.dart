// ignore_for_file: must_be_immutable

part of 'forget_passwordone_bloc.dart';

/// Represents the state of ForgetPasswordone in the application.
class ForgetPasswordoneState extends Equatable {
  ForgetPasswordoneState({this.forgetPasswordoneModelObj});

  ForgetPasswordoneModel? forgetPasswordoneModelObj;

  @override
  List<Object?> get props => [
        forgetPasswordoneModelObj,
      ];
  ForgetPasswordoneState copyWith(
      {ForgetPasswordoneModel? forgetPasswordoneModelObj}) {
    return ForgetPasswordoneState(
      forgetPasswordoneModelObj:
          forgetPasswordoneModelObj ?? this.forgetPasswordoneModelObj,
    );
  }
}
