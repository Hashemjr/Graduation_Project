// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

// signup_state.dart
class SignupState extends Equatable {
  SignupState({
    this.firstNameController,
    this.genderValue = '',
    this.lastNameController,
    this.userNameController,
    this.monthValueController,
    this.yearValueController,
    this.genderValueController,
    this.dayValueController, // Include dayValueController
    this.signupModelObj,
    this.selectedDateText, // Include selectedDateText
  });

  final String genderValue;
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? userNameController;
  TextEditingController? monthValueController;
  TextEditingController? yearValueController;
  TextEditingController? genderValueController;
  TextEditingController? dayValueController; // Include dayValueController
  SignupModel? signupModelObj;
  final String? selectedDateText; // Include selectedDateText

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        userNameController,
        monthValueController,
        yearValueController,
        genderValueController,
        dayValueController,
        signupModelObj,
        selectedDateText, // Add selectedDateText to props
      ];

  SignupState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? userNameController,
    TextEditingController? monthValueController,
    TextEditingController? yearValueController,
    TextEditingController? genderValueController,
    TextEditingController? dayValueController,
    SignupModel? signupModelObj,
    String? genderValue,
    String? selectedDateText, // Include selectedDateText in copyWith
  }) {
    return SignupState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      userNameController: userNameController ?? this.userNameController,
      monthValueController: monthValueController ?? this.monthValueController,
      yearValueController: yearValueController ?? this.yearValueController,
      genderValueController:
          genderValueController ?? this.genderValueController,
      dayValueController: dayValueController ?? this.dayValueController,
      signupModelObj: signupModelObj ?? this.signupModelObj,
      genderValue: genderValue ?? this.genderValue,
      selectedDateText: selectedDateText ?? this.selectedDateText, // Include selectedDateText in copyWith
    );
  }
}