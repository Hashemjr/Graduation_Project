// ignore_for_file: must_be_immutable

part of 'signup_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupThreeEvent extends Equatable {}

/// Event that is dispatched when the SignupThree widget is first created.
class SignupThreeInitialEvent extends SignupThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SignupThreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
