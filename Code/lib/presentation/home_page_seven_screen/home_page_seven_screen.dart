import 'bloc/home_page_seven_bloc.dart';
import 'models/home_page_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_bottom_bar.dart';
import 'package:grad_project/widgets/custom_floating_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

class HomePageSevenScreen extends StatelessWidget {
  HomePageSevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageSevenBloc>(
      create: (context) => HomePageSevenBloc(HomePageSevenState(
        homePageSevenModelObj: HomePageSevenModel(),
      ))
        ..add(HomePageSevenInitialEvent()),
      child: HomePageSevenScreen(),
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
              colors: [
                appTheme.black90001,
                appTheme.gray90001,
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 8.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildStatusRow(context),
                          SizedBox(height: 95.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_back".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                          ),
                          SizedBox(height: 731.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              right: 36.h,
                            ),
                            child: BlocSelector<HomePageSevenBloc,
                                HomePageSevenState, TextEditingController?>(
                              selector: (state) => state.userNameController,
                              builder: (context, userNameController) {
                                return CustomTextFormField(
                                  controller: userNameController,
                                  hintText: "lbl_username".tr,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "err_msg_please_enter_valid_text"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 5.h),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 59.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              right: 36.h,
                            ),
                            child: BlocSelector<HomePageSevenBloc,
                                HomePageSevenState, TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "lbl_password".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 7.h),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 115.h,
                              margin: EdgeInsets.only(right: 29.h),
                              child: Text(
                                "msg_forget_password".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 80.v),
                          _buildSignupColumn(context),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 62.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 137.h,
                                    child: Text(
                                      "msg_don_t_have_account".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Text(
                                    "lbl_signup2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            "lbl_or".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleLargePoppinsPrimary,
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 234.v,
                              width: 226.h,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRedOpenedBook234x142,
                                    height: 234.v,
                                    width: 142.h,
                                    radius: BorderRadius.circular(
                                      71.h,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 92.h,
                                      margin: EdgeInsets.only(top: 1.v),
                                      child: Text(
                                        "lbl_sign_in_using".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style:
                                            CustomTextStyles.bodySmallPrimary,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGmailLogo,
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 24.v,
                                      right: 27.h,
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
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 104,
          width: 64,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_9_30".tr,
              style: CustomTextStyles.bodyMediumRobotoPrimary,
            ),
          ),
          Spacer(
            flex: 53,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Spacer(
            flex: 46,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgWifi,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcSignalCellular4Bar,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBattery,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupColumn(BuildContext context) {
    return Container(
      width: 289.h,
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      padding: EdgeInsets.symmetric(horizontal: 75.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Container(
        width: 126.h,
        margin: EdgeInsets.only(left: 11.h),
        child: Text(
          "lbl_login".tr,
          maxLines: null,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.titleLargePoppinsBlack900.copyWith(
            height: 1.57,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
