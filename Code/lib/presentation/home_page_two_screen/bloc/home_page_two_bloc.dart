import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view_item_model.dart';
import 'package:grad_project/presentation/home_page_two_screen/models/home_page_two_model.dart';
part 'home_page_two_event.dart';
part 'home_page_two_state.dart';

/// A bloc that manages the state of a HomePageTwo according to the event that is dispatched to it.
class HomePageTwoBloc extends Bloc<HomePageTwoEvent, HomePageTwoState> {
  HomePageTwoBloc(HomePageTwoState initialState) : super(initialState) {
    on<HomePageTwoInitialEvent>(_onInitialize);
  }

  List<ViewItemModel> fillViewItemList() {
    return List.generate(8, (index) => ViewItemModel());
  }

  _onInitialize(
    HomePageTwoInitialEvent event,
    Emitter<HomePageTwoState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        passwordController: TextEditingController(),
        sliderIndex: 0));
    emit(state.copyWith(
        homePageTwoModelObj: state.homePageTwoModelObj
            ?.copyWith(viewItemList: fillViewItemList())));
  }
}
