//import 'package:email_otp/email_otp.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bloc/signuptwo_bloc.dart';
import 'models/signuptwo_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_pin_code_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chineasy/presentation/app_functions.dart';

class SignuptwoScreen extends StatefulWidget {
  const SignuptwoScreen({Key? key}) : super(key: key);
  static Widget builder(BuildContext context) {
    return BlocProvider<SignuptwoBloc>(
      create: (context) =>
          SignuptwoBloc(SignuptwoState(signuptwoModelObj: SignuptwoModel()))
            ..add(SignuptwoInitialEvent()),
      child: SignuptwoScreen(),
    );
  }

  @override
  _SignuptwoScreenState createState() => _SignuptwoScreenState();
}

class _SignuptwoScreenState extends State<SignuptwoScreen> {
  late FocusNode otpFocusNode;
  String enteredCode = "";
  @override
  void initState() {
    super.initState();
    otpFocusNode = FocusNode();
  }
  @override
  void dispose() {
    otpFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(otpFocusNode);
          },
          child: Container(
            width: SizeUtils.width,
            height: SizeUtils.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [appTheme.black900, appTheme.gray90001],
              ),
            ),
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration:
                          AppDecoration.gradientDeepOrangeAToRedA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 15.v),
                          SizedBox(
                            height: 27.v,
                            width: 90.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 3.v,
                                    width: 20.h,
                                    margin: EdgeInsets.only(right: 19.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(1.h),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 3.v,
                                    width: 20.h,
                                    margin: EdgeInsets.only(left: 19.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(1.h),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStar327x27,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(4.h),
                                  color: Colors.white,
                                  alignment: Alignment.centerRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStar227x27,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(4.h),
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStar127x27,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  radius: BorderRadius.circular(4.h),
                                  color: Colors.white,
                                  alignment: Alignment.centerLeft,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.v),
                          Text(
                            "lbl_otp_verfication".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                          SizedBox(
                            width: 221.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_enter_code_from2".tr,
                                    style: CustomTextStyles.labelLargeffa3a3a3,
                                  ),
                                  TextSpan(
                                    text: "lbl_email".tr,
                                    style:
                                        CustomTextStyles.labelLargeffa3a3a3Bold,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 4; i++)
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 23),
                                  child: Transform.translate(
                                    offset: Offset(0.0, 10.0), // Adjust the vertical offset as needed
                                    child: SizedBox(
                                      width: 40,
                                      child: Center(
                                        child: Text(
                                          enteredCode.length > i ? enteredCode[i] : '',
                                          style: TextStyle(fontSize: 35),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: 8.v),
                          Padding(
                            padding: EdgeInsets.only(left: 39.h, right: 46.h),
                            child: Focus(
                              focusNode: otpFocusNode,
                              child: BlocSelector<SignuptwoBloc, SignuptwoState,
                                  TextEditingController?>(
                                selector: (state) => state.otpController,
                                builder: (context, otpController) {
                                  return CustomPinCodeTextField(
                                    context: context,
                                    controller: otpController,
                                    onChanged: (value) {
                                      setState(() {
                                        enteredCode = value;
                                      });
                                      otpController?.text = value;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("msg_didn_t_receive_the".tr,
                                    style: theme.textTheme.labelLarge),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("lbl_resend".tr,
                                    style: CustomTextStyles.labelLargePrimary),
                              ),
                            ],
                          ),
                          SizedBox(height: 50.v),
                          CustomElevatedButton(
                            text: "lbl_submit".tr,
                            margin: EdgeInsets.only(left: 35.h, right: 36.h),
                            onPressed: () async { 
                              final SharedPreferences prefs = await SharedPreferences.getInstance();
                              final String email = prefs.getString('email') ?? '';
                              final String password = prefs.getString('password') ?? '';
                              final String otp = prefs.getString('otp') ?? '';
                              //final String otp = prefs.getString('otp') ?? '';
                              if (enteredCode==otp) {
                                              final snackBar = SnackBar(
                                              /// need to set following properties for best effect of awesome_snackbar_content
                                              elevation: 0,
                                              behavior: SnackBarBehavior.floating,
                                              backgroundColor: Colors.transparent,
                                              content: AwesomeSnackbarContent(
                                                title: 'GOOD JOB!',
                                                message:
                                                    'Account verified :D',
                                                contentType: ContentType.success,
                                              ),
                                              duration: Duration(seconds: 1),
                                            );
                                            ScaffoldMessenger.of(context)
                                              ..hideCurrentSnackBar()
                                              ..showSnackBar(snackBar);
                                        try {
                                          final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                            email: email,
                                            password: password,
                                          );
                                          final String uid = userCredential.user?.uid ?? '';
                                          final userData = await fetchDataLocally();
                                          addUserToFirestore(userData);
                                          await Future.delayed(Duration(seconds: 2));
                                          onTapSubmit(context);
                                          // Proceed with any additional actions
                                        } catch (e) {
                                          print('Error creating user: $e');
                                          // Handle error creating user
                                        }
                            } else {
                                final snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Oops!',
                                  message:
                                      'Incorrect OTP',
                                  contentType: ContentType.failure,
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(snackBar);
                            }
                            },
                          ),
                          SizedBox(height: 16.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 70.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 3.v, bottom: 0.v),
                                    child: Text("msg_already_have_account".tr,
                                        style: theme.textTheme.bodySmall),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtLogIn(context);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_log_in".tr,
                                          style: CustomTextStyles
                                              .titleMediumPoppins),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 0.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 156.v,
                              width: 220.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRedOpenedBook156x171,
                                    height: 156.v,
                                    width: 171.h,
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGmailLogo,
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                        right: 15.h, bottom: 57.v),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 35.v),
                                      child: Text("lbl_sign_in_using".tr,
                                          style:
                                              CustomTextStyles.bodySmallPrimary),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 2.v, right: 25.h),
                                      child: Text("lbl_or".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimary),
                                    ),
                                  ),
                                ],
                              ),
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
    );
  }

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

  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }

  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }

  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signuponeScreen);
  }
}