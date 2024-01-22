import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/frame_1321317428_screen/models/frame_1321317428_model.dart';
part 'frame_1321317428_event.dart';
part 'frame_1321317428_state.dart';

/// A bloc that manages the state of a Frame1321317428 according to the event that is dispatched to it.
class Frame1321317428Bloc
    extends Bloc<Frame1321317428Event, Frame1321317428State> {
  Frame1321317428Bloc(Frame1321317428State initialState) : super(initialState) {
    on<Frame1321317428InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame1321317428InitialEvent event,
    Emitter<Frame1321317428State> emit,
  ) async {}
}
