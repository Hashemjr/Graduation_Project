// ignore_for_file: must_be_immutable

part of 'forget_password_one_bloc.dart';

/// Represents the state of ForgetPasswordOne in the application.
class ForgetPasswordOneState extends Equatable {
  ForgetPasswordOneState({
    this.emailController,
    this.forgetPasswordOneModelObj,
  });

  TextEditingController? emailController;

  ForgetPasswordOneModel? forgetPasswordOneModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgetPasswordOneModelObj,
      ];
  ForgetPasswordOneState copyWith({
    TextEditingController? emailController,
    ForgetPasswordOneModel? forgetPasswordOneModelObj,
  }) {
    return ForgetPasswordOneState(
      emailController: emailController ?? this.emailController,
      forgetPasswordOneModelObj:
          forgetPasswordOneModelObj ?? this.forgetPasswordOneModelObj,
    );
  }
}
