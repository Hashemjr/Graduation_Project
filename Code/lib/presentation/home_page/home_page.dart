import '../home_page/widgets/userprofile_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:grad_project/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:grad_project/widgets/app_bar/custom_app_bar.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
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
                  SizedBox(
                    height: 395.v,
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
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 127.v),
                            child: Text(
                              "lbl_back".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                          ),
                        ),
                        _buildAppBar(context),
                        _buildContinueStudyingId(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 28.v),
                  _buildScrollViewId(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 58.h,
      leading: Container(
        height: 61.v,
        width: 56.h,
        margin: EdgeInsets.only(
          left: 2.h,
          bottom: 2.v,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar27,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.vertical(
                bottom: Radius.circular(24.h),
              ),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(
                top: 13.v,
                right: 8.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFireFlamePng1,
              height: 27.adaptSize,
              width: 27.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                left: 29.h,
                bottom: 34.v,
              ),
            ),
          ],
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_welcome_harry".tr,
              margin: EdgeInsets.only(right: 62.h),
            ),
            SizedBox(height: 4.v),
            AppbarSubtitle(
              text: "msg_let_s_learn_together".tr,
            ),
          ],
        ),
      ),
      actions: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.only(
            left: 3.h,
            top: 10.v,
            right: 3.h,
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: theme.colorScheme.primary.withOpacity(0.3),
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder27,
          ),
          child: Container(
            height: 53.adaptSize,
            width: 53.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlinePrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder27,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGoldenBell,
                  height: 27.v,
                  width: 32.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(right: 7.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 7.adaptSize,
                    width: 7.adaptSize,
                    margin: EdgeInsets.fromLTRB(27.h, 2.v, 5.h, 18.v),
                    decoration: BoxDecoration(
                      color: appTheme.greenA700,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.onPrimaryContainer,
                        width: 2.h,
                        strokeAlign: strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildContinueStudyingId(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: _buildNavigationTitleId(
                context,
                currentLesson: "lbl_active_level".tr,
                button: "lbl_see_course".tr,
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              padding: EdgeInsets.all(20.h),
              decoration: AppDecoration.card.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder32,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 41.h),
                    child: Row(
                      children: [
                        Container(
                          height: 84.adaptSize,
                          width: 84.adaptSize,
                          margin: EdgeInsets.only(
                            top: 12.v,
                            bottom: 15.v,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 84.adaptSize,
                                  width: 84.adaptSize,
                                  child: CircularProgressIndicator(
                                    value: 0.5,
                                    backgroundColor:
                                        theme.colorScheme.primaryContainer,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: AppDecoration.outlinePrimary3,
                                  child: Text(
                                    "lbl_72".tr,
                                    style: CustomTextStyles.titleMediumSemiBold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_beginner_level".tr,
                                style:
                                    CustomTextStyles.titleSmallPoppinsGray50002,
                              ),
                              Text(
                                "lbl_chapter_2".tr,
                                style: CustomTextStyles.labelLargeGray50002,
                              ),
                              SizedBox(
                                width: 153.h,
                                child: Text(
                                  "msg_pinyin_chinese".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleMediumSemiBold
                                      .copyWith(
                                    height: 1.33,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "msg_continue_your_journey".tr,
                                style: CustomTextStyles.bodySmallGray30001,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                    height: 44.v,
                    text: "msg_continue_studying".tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL22,
                    buttonTextStyle: CustomTextStyles.titleSmallPoppinsGray900,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 152.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount: state.homeModelObj?.userprofileItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            UserprofileItemModel model =
                state.homeModelObj?.userprofileItemList[index] ??
                    UserprofileItemModel();
            return UserprofileItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildScrollViewId(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 17.h,
              ),
              child: _buildNavigationTitleId(
                context,
                currentLesson: "lbl_culture".tr,
                button: "lbl_view_all".tr,
              ),
            ),
            SizedBox(height: 4.v),
            _buildUserProfile(context),
            SizedBox(height: 312.v),
            Padding(
              padding: EdgeInsets.only(
                left: 35.h,
                right: 36.h,
              ),
              child: BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                selector: (state) => state.userNameController,
                builder: (context, userNameController) {
                  return CustomTextFormField(
                    controller: userNameController,
                    hintText: "lbl_username".tr,
                    validator: (value) {
                      if (!isText(value)) {
                        return "err_msg_please_enter_valid_text".tr;
                      }
                      return null;
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
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
              child: BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                selector: (state) => state.passwordController,
                builder: (context, passwordController) {
                  return CustomTextFormField(
                    controller: passwordController,
                    hintText: "lbl_password".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_password".tr;
                      }
                      return null;
                    },
                    obscureText: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
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
            Container(
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
            ),
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
                      imagePath: ImageConstant.imgRedOpenedBook234x142,
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
                          style: CustomTextStyles.bodySmallPrimary,
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
    );
  }

  /// Common widget
  Widget _buildNavigationTitleId(
    BuildContext context, {
    required String currentLesson,
    required String button,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          currentLesson,
          style: CustomTextStyles.titleMediumMedium.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 2.v,
          ),
          child: Text(
            button,
            style: CustomTextStyles.labelLargeBlue400.copyWith(
              color: appTheme.blue400,
            ),
          ),
        ),
      ],
    );
  }
}
