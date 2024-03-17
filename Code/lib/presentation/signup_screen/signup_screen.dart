import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
<<<<<<< HEAD
=======
import 'package:chineasy/widgets/custom_icon_button.dart';
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
<<<<<<< HEAD
        create: (context) => SignupBloc(
            SignupState(signupModelObj: SignupModel(), genderValue: ""))
          ..add(SignupInitialEvent()),
=======
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel(), genderValue: ""))
              ..add(SignupInitialEvent()),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
        child: SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
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
                        colors: [appTheme.black900, appTheme.gray90001])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
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
                                          decoration: AppDecoration
                                              .gradientDeepOrangeAToRedA
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL40),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20.v),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
<<<<<<< HEAD
                                                          SizedBox(
                                                              height: 30.v),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgStar1,
                                                            height:
                                                                20.adaptSize,
                                                            width: 20.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(4.h),
                                                            color: Colors.white,
                                                          ),
=======
                                                          SizedBox(height: 30.v),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgStar1,
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h),
                                                            color: Colors.white,),

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgStar2,
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h),
<<<<<<< HEAD
                                                              color:
                                                                  Colors.black,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 20
                                                                          .h)),
=======
                                                              color: Colors.black,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          20.h)),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgStar3,
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h),
<<<<<<< HEAD
                                                              color:
                                                                  Colors.black,
=======
                                                              color: Colors.black,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          20.h))
                                                        ])),
                                                SizedBox(height: 40.v),
                                                _buildFirstAndLastName(context),
                                                SizedBox(height: 35.v),
                                                _buildUserName(context),
                                                SizedBox(height: 35.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 35.h),
                                                    child: Row(children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 1.v),
                                                          child:
                                                              Column(children: [
                                                            Text("lbl_day".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium),
<<<<<<< HEAD
=======

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                            SizedBox(
                                                                width: 49.h,
                                                                child: Divider(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary
                                                                        .withOpacity(
                                                                            0.45)))
                                                          ])),
                                                      _buildMonthValue(context),
                                                      _buildYearValue(context)
                                                    ])),
                                                SizedBox(height: 35.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
<<<<<<< HEAD
                                                        left: 35.h), //gender
=======
                                                        left: 35.h),//gender
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          _buildGenderValue(
                                                              context),
<<<<<<< HEAD
=======

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                        ])),
                                                SizedBox(height: 38.v),
                                                _buildSignup(context),
                                                SizedBox(height: 16.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 70.h),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
<<<<<<< HEAD
                                                                      top:
                                                                          3.5.v,
                                                                      left:
                                                                          15.v,
=======
                                                                      top: 3.5.v,left: 15.v,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                                      bottom:
                                                                          3.v),
                                                              child: Text(
                                                                  "msg_already_have_account"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtLogIn(
                                                                    context);
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 5
                                                                              .h),
                                                                  child: Text(
                                                                      "lbl_log_in"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleMediumPoppins)))
                                                        ])),
                                                SizedBox(height: 10.v),
                                                SizedBox(
                                                    height: 156.v,
                                                    width: 220.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
<<<<<<< HEAD
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGmailLogo,
                                                              height: 45
                                                                  .adaptSize,
                                                              width:
                                                                  45.adaptSize,
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          15.h,
                                                                      bottom: 57
                                                                          .v)),
=======

                                                          CustomImageView(
                                                            imagePath: ImageConstant.imgGmailLogo,
                                                            height: 45.adaptSize,
                                                            width: 45.adaptSize,
                                                            alignment: Alignment.bottomRight,
                                                            margin: EdgeInsets.only(right: 15.h, bottom: 57.v)),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 35
                                                                              .v),
                                                                  child: Text(
                                                                      "lbl_sign_in_using"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallPrimary))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 2.v,
                                                                      right:
                                                                          25.h),
                                                                  child: Text(
                                                                      "lbl_or"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleLargePrimary)))
                                                        ]))
                                              ]))),
                                  _buildTitleHead(context)
                                ])))))));
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
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
        });
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
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
            }));
  }

  /// Section Widget
  Widget _buildFirstAndLastName(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildFirstName(context),
              _buildLastName(context)
            ])));
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
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
            }));
  }

  /// Section Widget
  Widget _buildMonthValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.monthValueController,
            builder: (context, monthValueController) {
              return CustomTextFormField(
                  width: 54.h,
                  controller: monthValueController,
                  hintText: "lbl_month".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 1.h));
            }));
  }

  /// Section Widget
  Widget _buildYearValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.yearValueController,
            builder: (context, yearValueController) {
              return CustomTextFormField(
                  width: 49.h,
                  controller: yearValueController,
                  hintText: "lbl_year".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4.h));
            }));
  }
<<<<<<< HEAD

  var dropdownValue = 'Gender';
  var newValue = "";

=======
  var dropdownValue ='Gender';
  var newValue="";
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
  /// Section Widget
  Widget _buildGenderValue(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_rounded),
        style: const TextStyle(color: Colors.white60),
        underline: Container(
          height: 1,
          color: Colors.white60,
        ),
<<<<<<< HEAD
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: const [
          DropdownMenuItem<String>(
            value: 'Gender',
            child: Text(
              'Male',
              style: TextStyle(
                // Set text color to black
                fontSize: 21, // Set font size to 16 (adjust as needed)
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: 'Female',
            child: Text(
              'Female',
              style: TextStyle(
                // Set text color to black
                fontSize: 21, // Set font size to 16 (adjust as needed)
              ),
            ),
=======
        onChanged: (String? newValue){
          setState(() { dropdownValue = newValue!;});
        },
        items: const [

          DropdownMenuItem<String>(
            value: 'Gender',
            child: Text('Male',
              style: TextStyle(// Set text color to black
              fontSize: 21, // Set font size to 16 (adjust as needed)
            ),),

          ),
          DropdownMenuItem<String>(
            value: 'Female',
            child: Text('Female',style: TextStyle(// Set text color to black
              fontSize: 21, // Set font size to 16 (adjust as needed)
            ),),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
          )
        ],
      ),
    );
  }

<<<<<<< HEAD
=======

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_signup".tr,
        margin: EdgeInsets.only(left: 35.h, right: 36.h),
        onPressed: () {
          onTapSignup(context);
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildTitleHead(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 258.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 38.v),
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 38.v, bottom: 135.v),
                            child: Column(children: [
                              Text("lbl_get_started".tr,
                                  style: theme.textTheme.displayMedium),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 110.h),
                                      child: Text("msg_start_learning".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray500)))
                            ])),
<<<<<<< HEAD
                        Padding(
                          padding: EdgeInsets.only(
                              left:
                                  15.6.h), // Adjust the left padding as needed
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
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
=======
            Padding(
              padding: EdgeInsets.only(left: 15.6.h), // Adjust the left padding as needed
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                      ])),
              InkWell(
                onTap: () {
                  onTapBtnGoBack(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgGoBack,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              )
            ])));
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

<<<<<<< HEAD
  void setState(Null Function() param0) {}
}
=======
  void setState(Null Function() param0) {}}
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
