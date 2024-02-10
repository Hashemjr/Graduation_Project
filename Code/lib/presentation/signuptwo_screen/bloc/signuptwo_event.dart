// ignore_for_file: must_be_immutable

part of 'signuptwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Signuptwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignuptwoEvent extends Equatable {}

/// Event that is dispatched when the Signuptwo widget is first created.
class SignuptwoInitialEvent extends SignuptwoEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SignuptwoEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
