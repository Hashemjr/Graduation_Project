import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/home_page_container_screen/models/home_page_container_model.dart';
part 'home_page_container_event.dart';
part 'home_page_container_state.dart';

/// A bloc that manages the state of a HomePageContainer according to the event that is dispatched to it.
class HomePageContainerBloc
    extends Bloc<HomePageContainerEvent, HomePageContainerState> {
  HomePageContainerBloc(HomePageContainerState initialState)
      : super(initialState) {
    on<HomePageContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageContainerInitialEvent event,
    Emitter<HomePageContainerState> emit,
  ) async {}
}
