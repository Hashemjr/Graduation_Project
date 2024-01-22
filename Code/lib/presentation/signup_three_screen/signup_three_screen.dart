import 'bloc/signup_three_bloc.dart';
import 'models/signup_three_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_icon_button.dart';
import 'package:grad_project/widgets/custom_pin_code_text_field.dart';

class SignupThreeScreen extends StatelessWidget {
  const SignupThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupThreeBloc>(
        create: (context) => SignupThreeBloc(
            SignupThreeState(signupThreeModelObj: SignupThreeModel()))
          ..add(SignupThreeInitialEvent()),
        child: SignupThreeScreen());
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
                        colors: [appTheme.black90001, appTheme.gray90001])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 38.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: SizedBox(
                                  height: 1108.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 736.v,
                                                width: double.maxFinite,
                                                margin:
                                                    EdgeInsets.only(top: 142.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgBackground,
                                                          height: 620.v,
                                                          width: 360.h,
                                                          alignment: Alignment
                                                              .topCenter),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRedOpenedBook234x142,
                                                          height: 234.v,
                                                          width: 142.h,
                                                          radius: BorderRadius
                                                              .circular(71.h),
                                                          alignment: Alignment
                                                              .bottomLeft),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          35.h,
                                                                      top: 51.v,
                                                                      right:
                                                                          35.h),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                        height: 27
                                                                            .v,
                                                                        width: 90
                                                                            .h,
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerRight, child: Container(height: 3.v, width: 20.h, margin: EdgeInsets.only(right: 19.h), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(1.h)))),
                                                                              Align(alignment: Alignment.centerLeft, child: Container(height: 3.v, width: 20.h, margin: EdgeInsets.only(left: 19.h), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(1.h)))),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar31, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.centerRight),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar21, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar11, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.centerLeft)
                                                                            ])),
                                                                    SizedBox(
                                                                        height:
                                                                            57.v),
                                                                    Container(
                                                                        width: 221
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                35.h,
                                                                            right: 32.h),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "msg_enter_code_from2".tr, style: CustomTextStyles.labelLargeffa3a3a3),
                                                                              TextSpan(text: "lbl_email2".tr, style: CustomTextStyles.labelLargeffa3a3a3Bold)
                                                                            ]),
                                                                            textAlign: TextAlign.center)),
                                                                    SizedBox(
                                                                        height:
                                                                            12.v),
                                                                    Text(
                                                                        "lbl_02_40"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleSmallPoppinsPrimary15),
                                                                    SizedBox(
                                                                        height:
                                                                            37.v),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 4
                                                                                .h,
                                                                            right: 10
                                                                                .h),
                                                                        child: BlocSelector<
                                                                                SignupThreeBloc,
                                                                                SignupThreeState,
                                                                                TextEditingController?>(
                                                                            selector: (state) =>
                                                                                state.otpController,
                                                                            builder: (context, otpController) {
                                                                              return CustomPinCodeTextField(
                                                                                  context: context,
                                                                                  controller: otpController,
                                                                                  onChanged: (value) {
                                                                                    otpController?.text = value;
                                                                                  });
                                                                            })),
                                                                    SizedBox(
                                                                        height:
                                                                            20.v),
                                                                    Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(bottom: 2.v),
                                                                              child: Text("msg_didn_t_receive_the".tr, style: theme.textTheme.labelLarge)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 3.h),
                                                                              child: Text("lbl_resend".tr, style: CustomTextStyles.labelLargePrimary))
                                                                        ]),
                                                                    SizedBox(
                                                                        height:
                                                                            53.v),
                                                                    CustomElevatedButton(
                                                                        text: "lbl_submit"
                                                                            .tr,
                                                                        onPressed:
                                                                            () {
                                                                          onTapSubmit(
                                                                              context);
                                                                        }),
                                                                    SizedBox(
                                                                        height:
                                                                            16.v),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Padding(
                                                                            padding: EdgeInsets.only(left: 35.h, right: 49.h),
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("msg_already_have_account".tr, style: theme.textTheme.bodySmall)),
                                                                              GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapTxtLogIn(context);
                                                                                  },
                                                                                  child: Padding(padding: EdgeInsets.only(left: 5.h), child: Text("lbl_log_in2".tr, style: theme.textTheme.titleMedium)))
                                                                            ]))),
                                                                    SizedBox(
                                                                        height:
                                                                            4.v),
                                                                    Text(
                                                                        "lbl_or"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleLargePoppinsPrimary)
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom: 211
                                                                          .v),
                                                              child: Text(
                                                                  "lbl_sign_in_using"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallPrimary))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 299
                                                                          .v),
                                                              child: Text(
                                                                  "msg_re_write_password"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGmailLogo,
                                                          height: 45.adaptSize,
                                                          width: 45.adaptSize,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom:
                                                                      165.v))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 45.v,
                                                    right: 122.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("lbl_get_started".tr,
                                                          style: theme.textTheme
                                                              .displayMedium),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          3.h),
                                                              child: Text(
                                                                  "msg_start_learning"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleSmallPoppinsErrorContainer)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: 251.v,
                                                width: 122.h,
                                                margin:
                                                    EdgeInsets.only(top: 7.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse1914,
                                                          height: 143.v,
                                                          width: 88.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 9.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup8779,
                                                          height: 129.v,
                                                          width: 120.h,
                                                          alignment: Alignment
                                                              .topCenter,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 5.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgIcon7,
                                                          height: 177.v,
                                                          width: 118.h,
                                                          alignment: Alignment
                                                              .bottomCenter),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgIcon3,
                                                          height: 132.v,
                                                          width: 122.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 230.v),
                                                child: Text(
                                                    "lbl_otp_verfication".tr,
                                                    style: theme.textTheme
                                                        .headlineLarge))),
                                        _buildKeyboard(context),
                                        CustomIconButton(
                                            height: 52.adaptSize,
                                            width: 52.adaptSize,
                                            alignment: Alignment.topLeft,
                                            onTap: () {
                                              onTapBtnGoBack(context);
                                            },
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGoBack))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildKeyboard(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
              decoration: AppDecoration.fillGray,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    padding: EdgeInsets.all(9.h),
                    decoration: IconButtonStyleHelper.fillCyan,
                    child: CustomImageView(imagePath: ImageConstant.imgGrid)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgSticker24px,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 5.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 5.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgTranslate24px,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 5.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 5.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgOpenFloatingKeyboard24px,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 5.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgMenu,
                    height: 24.v,
                    width: 20.h,
                    margin: EdgeInsets.fromLTRB(17.h, 5.v, 3.h, 5.v))
              ])),
          Container(
              decoration: AppDecoration.fillGray,
              child: Column(children: [
                SizedBox(height: 8.v),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, right: 3.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_q".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_w".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_e".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.all(11.h),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_r".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.all(11.h),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_t".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_y".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_u".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_i".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_o".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 30.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_p".tr,
                                  style: theme.textTheme.titleLarge))
                        ])),
                SizedBox(height: 12.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 32.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_a".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_s".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_d".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_f".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_g".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_h".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_j".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_k".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 32.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_l".tr,
                                  style: theme.textTheme.titleLarge))
                        ])),
                SizedBox(height: 12.v),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, right: 7.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 46.v,
                              width: 48.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgHome,
                                  height: 24.v,
                                  width: 21.h,
                                  alignment: Alignment.center)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_z".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_x".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_c".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_v".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_b".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_n".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: 29.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Text("lbl_m".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              height: 46.v,
                              width: 48.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 24.v,
                                  width: 21.h,
                                  alignment: Alignment.center))
                        ])),
                SizedBox(height: 12.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h, right: 6.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.h, vertical: 11.v),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder23),
                              child: Text("lbl_123".tr,
                                  style: CustomTextStyles
                                      .titleSmallRobotoBluegray800)),
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.only(left: 1.h),
                              color: appTheme.gray300,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Container(
                                  height: 46.v,
                                  width: 31.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 7.v),
                                  decoration: AppDecoration.fillGray300
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder6),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("lbl".tr,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSettingsOnerrorcontainer,
                                            height: 12.v,
                                            width: 11.h,
                                            alignment: Alignment.topCenter,
                                            margin: EdgeInsets.only(top: 3.v))
                                      ]))),
                          Container(
                              height: 46.v,
                              width: 31.h,
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.h, vertical: 11.v),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGlobe,
                                  height: 24.v,
                                  width: 22.h,
                                  alignment: Alignment.center)),
                          CustomImageView(
                              imagePath: ImageConstant.imgLightColorKey,
                              height: 46.v,
                              width: 142.h,
                              radius: BorderRadius.circular(6.h),
                              margin: EdgeInsets.only(left: 2.h)),
                          CustomElevatedButton(
                              height: 46.v,
                              width: 31.h,
                              text: "lbl2".tr,
                              margin: EdgeInsets.only(left: 2.h),
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle: theme.textTheme.titleLarge!),
                          Container(
                              height: 46.v,
                              width: 50.h,
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 11.v),
                              decoration: AppDecoration.fillCyan.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder23),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 24.v,
                                  width: 22.h,
                                  alignment: Alignment.center))
                        ])),
                SizedBox(height: 30.v),
                CustomImageView(
                    imagePath: ImageConstant.imgBottomNav,
                    height: 36.v,
                    width: 359.h)
              ]))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupOneScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupOneScreen,
    );
  }
}
