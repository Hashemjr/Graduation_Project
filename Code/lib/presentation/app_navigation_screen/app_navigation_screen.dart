import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome page Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomePageThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome page Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomePageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome page Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomePageFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.welcomePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "welcome page One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomePageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 1321317428".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frame1321317428Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose account Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccountThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose account One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccountOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose account Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccountTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose account".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signup Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signup One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signup Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signup".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forget password One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgetPasswordOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forget password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "reset password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "reset password One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile-leaderboard".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileLeaderboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile-stats".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileStatsScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
