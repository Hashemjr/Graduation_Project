// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'coursescard1_item_model.dart';

/// This class defines the variables used in the [courses_test_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CoursesTestContainerModel extends Equatable {
  CoursesTestContainerModel({this.coursescard1ItemList = const []}) {}

  List<Coursescard1ItemModel> coursescard1ItemList;

  CoursesTestContainerModel copyWith(
      {List<Coursescard1ItemModel>? coursescard1ItemList}) {
    return CoursesTestContainerModel(
      coursescard1ItemList: coursescard1ItemList ?? this.coursescard1ItemList,
    );
  }

  @override
  List<Object?> get props => [coursescard1ItemList];
}
