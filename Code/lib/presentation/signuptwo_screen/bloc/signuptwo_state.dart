// ignore_for_file: must_be_immutable

part of 'signuptwo_bloc.dart';

/// Represents the state of Signuptwo in the application.
class SignuptwoState extends Equatable {
  SignuptwoState({
    this.otpController,
    this.signuptwoModelObj,
  });

  TextEditingController? otpController;

  SignuptwoModel? signuptwoModelObj;

  @override
  List<Object?> get props => [
        otpController,
        signuptwoModelObj,
      ];
  SignuptwoState copyWith({
    TextEditingController? otpController,
    SignuptwoModel? signuptwoModelObj,
  }) {
    return SignuptwoState(
      otpController: otpController ?? this.otpController,
      signuptwoModelObj: signuptwoModelObj ?? this.signuptwoModelObj,
    );
  }
}
