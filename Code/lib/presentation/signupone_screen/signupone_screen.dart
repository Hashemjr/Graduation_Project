import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bloc/signupone_bloc.dart';
import 'models/signupone_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:chineasy/firebase_options.dart';
//import 'package:email_otp/email_otp.dart';
import 'package:chineasy/presentation/OTP.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
// ignore_for_file: must_be_immutable
class SignuponeScreen extends StatelessWidget {
  SignuponeScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static Widget builder(BuildContext context) {
    return BlocProvider<SignuponeBloc>(
      create: (context) =>
          SignuponeBloc(SignuponeState(signuponeModelObj: SignuponeModel()))
            ..add(SignuponeInitialEvent()),
      child: SignuponeScreen(),
    );
  }
EmailOTP myauth = EmailOTP();
String? otp;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: FutureBuilder(
          future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          ), // Replace yourFutureFunction() with the actual function that returns a Future
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While the future is loading
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              // If there's an error with the future
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              // If the future has successfully resolved
              return _buildContent(context);
            }
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
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
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                    decoration:
                        AppDecoration.gradientDeepOrangeAToRedA.copyWith(
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
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 3.v,
                                  width: 20.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgStar2,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                radius: BorderRadius.circular(4.h),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                margin: EdgeInsets.only(left: 00.h),
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
                        SizedBox(height: 20.v),
                        _buildEmailField(context),
                        SizedBox(height: 40.v),
                        _buildEmailField1(context),
                        SizedBox(height: 40.v),
                        _buildPasswordField(context),
                        SizedBox(height: 40.v),
                        _buildConfirmPasswordField(context),
                        SizedBox(height: 40.v),
                        _buildSignupButton(context),
                        SizedBox(height: 20.v),
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
                                      ImageConstant.redbook,
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
                                        EdgeInsets.only(top: 5.v, right: 25.h),
                                    child: Text("lbl_or".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary),
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
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child:
          BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
            controller: emailFieldController,
            enableSuggestions: true,
            autocorrect: false,
            hintText: "lbl_email2".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || !isValidEmail(value, isRequired: true)) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child:
          BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
        selector: (state) => state.emailFieldController1,
        builder: (context, emailFieldController1) {
          return CustomTextFormField(
            controller: emailFieldController1,
            enableSuggestions: true,
            autocorrect: false,
            hintText: "lbl_confirm_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || !isValidEmail(value, isRequired: true)) {
                return "err_msg_please_enter_valid_email".tr;
              }
              if (value !=
                  context
                      .read<SignuponeBloc>()
                      .state
                      .emailFieldController
                      ?.text) {
                return "err_msg_emails_do_not_match"
                    .tr; // Updated error message
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child:
          BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
        selector: (state) => state.passwordFieldController,
        builder: (context, passwordFieldController) {
          return CustomTextFormField(
            controller: passwordFieldController,
            hintText: "lbl_password".tr,
            enableSuggestions: false,
            autocorrect: false,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || !isValidPassword(value, isRequired: true)) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h, right: 36.h),
      child:
          BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
        selector: (state) => state.confirmPasswordFieldController,
        builder: (context, confirmPasswordFieldController) {
          return CustomTextFormField(
            controller: confirmPasswordFieldController,
            hintText: "msg_confirm_password".tr,
            enableSuggestions: false,
            autocorrect: false,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || !isValidPassword(value, isRequired: true)) {
                return "err_msg_please_enter_valid_password".tr;
              }
              if (value !=
                  context
                      .read<SignuponeBloc>()
                      .state
                      .passwordFieldController
                      ?.text) {
                // Use ?. to access text property
                return "err_msg_passwords_do_not_match".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return BlocBuilder<SignuponeBloc, SignuponeState>(
      builder: (context, state) {
        final emailNotEmpty =
            state.emailFieldController?.text.isNotEmpty ?? false;
        final email1NotEmpty =
            state.emailFieldController1?.text.isNotEmpty ?? false;
        final passwordNotEmpty =
            state.passwordFieldController?.text.isNotEmpty ?? false;
        final confirmPasswordNotEmpty =
            state.confirmPasswordFieldController?.text.isNotEmpty ?? false;

        String errorMessage = '';
        if (!emailNotEmpty ||
            !email1NotEmpty ||
            !passwordNotEmpty ||
            !confirmPasswordNotEmpty) {
          errorMessage = 'All fields must be filled.';
        } else {
          final emailValid =
              isValidEmail(state.emailFieldController?.text ?? '');
          final emailMatch = state.emailFieldController?.text ==
              state.emailFieldController1?.text;
          final passwordValid =
              isValidPassword(state.passwordFieldController?.text ?? '');
          final passwordMatch = state.passwordFieldController?.text ==
              state.confirmPasswordFieldController?.text;

          if (!emailValid) {
            errorMessage = 'Please enter a valid email.';
          } else if (!emailMatch) {
            errorMessage = 'Emails do not match.';
          } else if (!passwordValid) {
            errorMessage = '''
Please enter a valid password:

- at least 8 characters long

- mix of uppercase and lowercase letters

- numbers and special characters
                 ''';
          } else if (!passwordMatch) {
            errorMessage = 'Passwords do not match.';
          }
        }

        return CustomElevatedButton(
          text: "lbl_signup".tr,
          margin: EdgeInsets.only(left: 35.h, right: 36.h),
          onPressed: () async {
            if (errorMessage.isNotEmpty) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor:
                        Colors.white, // Set background color to white
                    title: Text(
                      'Validation Error',
                      style: TextStyle(
                          color: Colors.black), // Set text color to black
                    ),
                  //],
                );
              },
            );
          } else {
            final _email = state.emailFieldController?.text ?? '';
            final pass = state.passwordFieldController?.text ?? '';
            try {
              bool check= await checkEmail(_email);
              if(check){
                final snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'On Snap!',
                    message:
                        'This email aready exists.',
                    contentType: ContentType.failure,
                  ),
                );
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
               //return;
              }else{
                await sendEmail(_email,myauth);
              otp=myauth.getSentOTP();
              await saveDATA(_email,pass,otp as String);
              final snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'GOOD JOB!',
                    message:
                        'Correct email and password',
                    contentType: ContentType.success,
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              await Future.delayed(Duration(seconds: 2));
              // Save OTP to Firestore
              // Send OTP to user's email
              // Fetch user data locally
              //final userData = await fetchDataLocally();
              // Add user data to Firestore
              //addUserToFirestore(userData);
              // Proceed with any additional actions
              // Navigate to the next screen
              onTapSignupButton(context);
              }
              // Create user with email and password
              //final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              //  email: _email,
              //  password: pass,
              //);
              // Get the UID of the newly created user
              //final String uid = userCredential.user?.uid ?? '';
              // Now you have the UID of the newly created user
              //print('UID of the newly created user: $uid');
              // Generate OTP
              //final String otp = _generateOTP();
              
            } catch (e) {
              // Handle any errors
              print('Error creating user: $e');
            }
          }
          },
        );
      },
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
                        Text("lbl_get_started".tr,
                            style: theme.textTheme.displayMedium),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 105.h),
                            child: Text("msg_start_learning".tr,
                                style: CustomTextStyles.titleSmallGray500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 7.5.h),//15.5
                         // Adjust the left padding as needed
                    child: SizedBox(
                      height: 251.v,
                      width: 115.h,//122
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

  /// Navigates to the signuptwoScreen when the action is triggered.
  onTapSignupButton(BuildContext context) async {
    print('correct email and password');
    NavigatorService.pushNamed(
      AppRoutes.signuptwoScreen,
      arguments: myauth,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
  //String _generateOTP() {
    // Generate a random 4-digit OTP
    //final _random = Random();
    //return (_random.nextInt(9000) + 1000).toString();
  //}
Future<void> sendEmail(String recipientEmail,EmailOTP myauth) async {
    myauth.setConfig(
      appEmail: "chineasy3@gmail.com",
      appName: "Chineasy",
      userEmail: recipientEmail,
      otpLength: 4,
      otpType: OTPType.digitsOnly,
    );

  if (await myauth.sendOTP()) {
    print("OTP has been sent to $recipientEmail");
  } else {
    print("Failed to send OTP to $recipientEmail");
  }
}
  Future<void> saveDATA(String email, String password, String otp) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email); // Save email
    await prefs.setString('password', password); // Save password
    await prefs.setString('otp', otp); // Save OTP
  }
Future<bool> checkEmail(String email) async {
  try {
    // ignore: deprecated_member_use
    List<String> signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
    return signInMethods.isNotEmpty; // If not empty, email is registered
  } catch (e) {
    print("Error checking email registration: $e");
    return false; // Return false if an error occurs
  }
}