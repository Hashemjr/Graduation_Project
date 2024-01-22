// ignore_for_file: must_be_immutable

part of 'frame_1321317428_bloc.dart';

/// Represents the state of Frame1321317428 in the application.
class Frame1321317428State extends Equatable {
  Frame1321317428State({this.frame1321317428ModelObj});

  Frame1321317428Model? frame1321317428ModelObj;

  @override
  List<Object?> get props => [
        frame1321317428ModelObj,
      ];
  Frame1321317428State copyWith(
      {Frame1321317428Model? frame1321317428ModelObj}) {
    return Frame1321317428State(
      frame1321317428ModelObj:
          frame1321317428ModelObj ?? this.frame1321317428ModelObj,
    );
  }
}
