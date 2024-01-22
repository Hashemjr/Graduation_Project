import '../courses_page/widgets/userprofilelist_item_widget.dart';
import 'bloc/courses_bloc.dart';
import 'models/courses_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/app_bar/appbar_title.dart';
import 'package:grad_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:grad_project/widgets/app_bar/custom_app_bar.dart';
import 'package:grad_project/widgets/custom_outlined_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class CoursesPage extends StatelessWidget {
  CoursesPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CoursesBloc>(
      create: (context) => CoursesBloc(CoursesState(
        coursesModelObj: CoursesModel(),
      ))
        ..add(CoursesInitialEvent()),
      child: CoursesPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.background2,
              child: Column(
                children: [
                  _buildMainStack(context),
                  SizedBox(height: 16.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            "msg_mandarin_courses".tr,
                            style: CustomTextStyles.titleLargeOutfitPrimary,
                          ),
                          SizedBox(height: 5.v),
                          SizedBox(
                            height: 1223.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgBackground,
                                        height: 23.v,
                                        width: 360.h,
                                      ),
                                      SizedBox(height: 118.v),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 35.h,
                                          right: 36.h,
                                        ),
                                        child: BlocSelector<
                                            CoursesBloc,
                                            CoursesState,
                                            TextEditingController?>(
                                          selector: (state) =>
                                              state.userNameController,
                                          builder:
                                              (context, userNameController) {
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
                                                  EdgeInsets.symmetric(
                                                      horizontal: 5.h),
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
                                        child: BlocSelector<
                                            CoursesBloc,
                                            CoursesState,
                                            TextEditingController?>(
                                          selector: (state) =>
                                              state.passwordController,
                                          builder:
                                              (context, passwordController) {
                                            return CustomTextFormField(
                                              controller: passwordController,
                                              hintText: "lbl_password".tr,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.visiblePassword,
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
                                                  EdgeInsets.symmetric(
                                                      horizontal: 7.h),
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
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                width: 137.h,
                                                child: Text(
                                                  "msg_don_t_have_account".tr,
                                                  maxLines: null,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ),
                                              Text(
                                                "lbl_signup2".tr,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 9.v),
                                      Text(
                                        "lbl_or".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleLargePoppinsPrimary,
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
                                                imagePath: ImageConstant
                                                    .imgRedOpenedBook234x142,
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
                                                  margin:
                                                      EdgeInsets.only(top: 1.v),
                                                  child: Text(
                                                    "lbl_sign_in_using".tr,
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodySmallPrimary,
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGmailLogo,
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
                                _buildUserProfileList(context),
                              ],
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
      ),
    );
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
      height: 241.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFpdl1,
            height: 191.v,
            width: 199.h,
            alignment: Alignment.topRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFpdl2,
            height: 220.v,
            width: 199.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 54.v),
              child: Text(
                "lbl_back".tr,
                style: theme.textTheme.displayMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineOnError.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder23,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgStatTileSmall,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_level_1".tr,
                      style: CustomTextStyles.titleLargeInterBlack90001,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "msg_250_points_to_next".tr,
                      style: CustomTextStyles.titleSmallBlack90001_1,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    height: 32.v,
                    width: 298.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup289345,
                          height: 32.v,
                          width: 298.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(3.h, 3.v, 2.h, 3.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                    left: 2.h,
                                    top: 2.v,
                                    right: 2.h,
                                    bottom: 2.v,
                                  ),
                                  strokeWidth: 2.h,
                                  gradient: LinearGradient(
                                    begin: Alignment(0.07, 1),
                                    end: Alignment(0.99, 0.01),
                                    colors: [
                                      appTheme.gray90002,
                                      appTheme.red90001,
                                    ],
                                  ),
                                  corners: Corners(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  child: CustomOutlinedButton(
                                    width: 24.h,
                                    text: "lbl_1".tr,
                                  ),
                                ),
                                Spacer(
                                  flex: 62,
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgSignal,
                                    height: 9.v,
                                    width: 10.h,
                                    margin: EdgeInsets.only(
                                      top: 6.v,
                                      bottom: 9.v,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 3.h,
                                    top: 3.v,
                                    bottom: 4.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_750".tr,
                                          style: CustomTextStyles
                                              .titleSmallfffffefd,
                                        ),
                                        TextSpan(
                                          text: "lbl_1000".tr,
                                          style: CustomTextStyles
                                              .titleSmall7fffffff,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Spacer(
                                  flex: 37,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: SizedBox(
                                    height: 25.v,
                                    width: 24.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGroup288910,
                                          height: 25.v,
                                          width: 24.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "lbl_22".tr,
                                            style: CustomTextStyles
                                                .titleSmallPrimary,
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
                  SizedBox(height: 12.v),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 94.v,
            title: AppbarTitle(
              text: "msg_journey_to_fluency".tr,
              margin: EdgeInsets.only(left: 8.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgRewind,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 15.h,
                  bottom: 1.v,
                ),
              ),
            ],
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
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 32.h,
          bottom: 732.v,
        ),
        child: BlocSelector<CoursesBloc, CoursesState, CoursesModel?>(
          selector: (state) => state.coursesModelObj,
          builder: (context, coursesModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount: coursesModelObj?.userprofilelistItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model =
                    coursesModelObj?.userprofilelistItemList[index] ??
                        UserprofilelistItemModel();
                return UserprofilelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
