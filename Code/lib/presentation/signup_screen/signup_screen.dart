import 'package:shared_preferences/shared_preferences.dart';
import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chineasy/presentation/app_functions.dart'; // Import the intl package
// ignore_for_file: must_be_immutable

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String?dropdownValue;
  String?username;
  String?firstname;
  String?lastname;
  String? selectedDateText; // Variable to store the selected date as text

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
      create: (context) => SignupBloc(
        SignupState(signupModelObj: SignupModel(), genderValue: "")
      )..add(SignupInitialEvent()),
      child: SignupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.black900, appTheme.gray90001],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: AppDecoration.gradientDeepOrangeAToRedA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.v),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 30.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgStar1,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    radius: BorderRadius.circular(4.h),
                                    color: Colors.white,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgStar2,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    radius: BorderRadius.circular(4.h),
                                    color: Colors.black,
                                    margin: EdgeInsets.only(left: 20.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgStar3,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    radius: BorderRadius.circular(4.h),
                                    color: Colors.black,
                                    margin: EdgeInsets.only(left: 20.h),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40.v),
                            _buildFirstAndLastName(context),
                            SizedBox(height: 35.v),
                            _buildUserName(context),
                            SizedBox(height: 35.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Text(
                                      'Birthday',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 10.h),
                                  if (selectedDateText != null)
                                    Text(
                                      selectedDateText!,
                                      style: TextStyle(color: Colors.white),
                                    ), // Display selected date
                                ],
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Padding(
                              padding: EdgeInsets.only(left: 35.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildGenderValue(context),
                                ],
                              ),
                            ),
                            SizedBox(height: 38.v),
                            _buildSignup(context),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.only(left: 70.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 3.5.v, left: 15.v, bottom: 3.v),
                                    child: Text(
                                      "msg_already_have_account".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtLogIn(context);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        "lbl_log_in".tr,
                                        style: CustomTextStyles.titleMediumPoppins,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.v),
                            SizedBox(
                              height: 156.v,
                              width: 220.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGmailLogo,
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(right: 15.h, bottom: 57.v),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 35.v),
                                      child: Text(
                                        "lbl_sign_in_using".tr,
                                        style: CustomTextStyles.bodySmallPrimary,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 2.v, right: 25.h),
                                      child: Text(
                                        "lbl_or".tr,
                                        style: CustomTextStyles.titleLargePrimary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildTitleHead(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Color.fromARGB(255, 0, 0, 0), // Background color of the button
              onPrimary: Colors.white, // Text color of the button
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 100, 4, 4), // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                ),
                foregroundColor: Color.fromARGB(155, 255, 255, 255), // Text color of the buttons
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      // Update the selected date as text
      selectedDateText = DateFormat('yyyy-MM-dd').format(picked);
      // Dispatch an event to update the state with the selected date
      context.read<SignupBloc>().add(UpdateSelectedDate(selectedDateText));
    }
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
      selector: (state) => state.firstNameController,
      builder: (context, firstNameController) {
        return CustomTextFormField(
          width: 140.h,
          controller: firstNameController,
          hintText: "lbl_first_name".tr,
          validator: (value) {
            if (!isText(value)){
              return "err_msg_please_enter_valid_text".tr;
            }
            firstname=value;
            return null;
          },
          contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.lastNameController,
        builder: (context, lastNameController) {
          return CustomTextFormField(
            width: 140.h,
            controller: lastNameController,
            hintText: "lbl_last_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              lastname=value;
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstAndLastName(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFirstName(context),
            _buildLastName(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.userNameController,
        builder: (context, userNameController) {
          return CustomTextFormField(
            controller: userNameController,
            hintText: "lbl_username".tr,
            alignment: Alignment.center,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              username=value;
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
          );
        },
      ),
    );
  }

String? genderValue; // Declare genderValue outside the function

Widget _buildGenderValue(BuildContext context) {
  return Center(
    child: SizedBox(
      width: 150,
      child: DropdownButtonFormField<String>(
        value: genderValue,
        icon: const Icon(Icons.arrow_drop_down_rounded),
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), // Set text color to black for visibility
        decoration: InputDecoration(
          labelText: 'Gender', // Add a label to indicate the purpose of the dropdown
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255), // Set label text color to black for visibility
            fontSize: 16, // Set label font size to match other fonts
            fontWeight: FontWeight.normal, // Set label font weight to normal
            fontFamily: 'Roboto', // Set label font family to match other fonts
          ),
          fillColor: Color.fromARGB(90, 124, 121, 121), // Set background color to match the theme
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16), // Adjust padding for better appearance
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)), // Set border color to black
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)), // Set border color to black
          ),
        ),
        onChanged: (String? newValue) {
            genderValue = newValue;
        },
        
        items: [
          DropdownMenuItem<String>(
            value: 'male',
            child: Text('Male'),
          ),
          DropdownMenuItem<String>(
            value: 'female',
            child: Text('Female'),
          ),
          // Add more items as needed
        ],
      ),
    ),
  );
}

  /// Section Widget
Widget _buildSignup(BuildContext context) {
  return CustomElevatedButton(
    text: "lbl_signup".tr,
    margin: EdgeInsets.only(left: 35.h, right: 36.h),
    onPressed: () async=> _validateAndSignup(context),
    alignment: Alignment.center,
  );
}
_validateAndSignup(BuildContext context)async{
  final state = context.read<SignupBloc>().state;
  final firstNameController = state.firstNameController;
  final lastNameController = state.lastNameController;
  final userNameController = state.userNameController;
  final selectedDateText = state.selectedDateText;
  //final genderValue = state.genderValue;
  username = userNameController?.text;
  firstname = firstNameController?.text;
  lastname = lastNameController?.text;
  this.selectedDateText = selectedDateText;
  List<String> missingFields = [];

  if (firstNameController?.text.isEmpty ?? true) {
    missingFields.add("First Name");
  }
  if (lastNameController?.text.isEmpty ?? true) {
    missingFields.add("Last Name");
  }
  if (userNameController?.text.isEmpty ?? true) {
    missingFields.add("Username");
  }
  if (selectedDateText == null || selectedDateText.isEmpty) {
    missingFields.add("Birthday");
  }
  if (genderValue==null||genderValue!.isEmpty) {
    missingFields.add("Gender");
  }
  if (missingFields.isNotEmpty) {
    _showValidationErrorDialog(context, missingFields);
  } else {
     saveDataLocally();
    _navigateToNextScreen(context);
  }
}
void _showValidationErrorDialog(BuildContext context, List<String> missingFields) {
  String errorMessage = "Please fill in the following fields:\n";
  for (String field in missingFields) {
    errorMessage += "- $field\n";
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Validation Error",
          style: TextStyle(color: Colors.black),
        ),
        content: Text(
          errorMessage,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
void saveDataLocally() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // Save data using keys
  prefs.setString('username', username!);
  prefs.setString('firstname', firstname!);
  prefs.setString('lastname', lastname!);
  prefs.setString('birthday', selectedDateText!);
  prefs.setString('gender', genderValue!);
}
/// Navigate to the next screen
void _navigateToNextScreen(BuildContext context) async {
  NavigatorService.pushNamed(
    AppRoutes.signuponeScreen,
  );
}

  /// Section Widget
  Widget _buildTitleHead(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 258.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 38.v),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 38.v, bottom: 135.v),
                    child: Column(
                      children: [
                        Text(
                          "lbl_get_started".tr,
                          style: theme.textTheme.displayMedium,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 110.h),
                            child: Text(
                              "msg_start_learning".tr,
                              style: CustomTextStyles.titleSmallGray500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.6.h),
                    child: SizedBox(
                      height: 251.v,
                      width: 122.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBack,
                            height: 147.v,
                            width: 120.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 5.v),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 251.v,
                              width: 122.h,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcon7,
                                    height: 177.v,
                                    width: 118.h,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcon3,
                                    height: 132.v,
                                    width: 122.h,
                                    alignment: Alignment.topCenter,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                onTapBtnGoBack(context);
              },
              child: Image.asset(
                      ImageConstant.imgGoBack,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      alignment: Alignment.topLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the signuponeScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signuponeScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the chooseAccountoneScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccountoneScreen,
    );
  }
}