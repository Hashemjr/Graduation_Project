import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';

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
                              screenTitle: "choose accountOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccountoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose accountTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccounttwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose accountThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseAccountthreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile states".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileStateTestPage),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signup".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signupTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signuptwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "signupOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signuponeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forget password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "forget passwordOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgetPasswordoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "reset password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "reset passwordTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordtwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile-leaderboard".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileLeaderboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "courses test - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.coursesTestContainer1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageContainerScreen),
                            ),
<<<<<<< HEAD
                            _buildScreenTitle(context,
                                screenTitle: "Flashcards",
                                onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.FlashcardsHomePage)),
=======
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
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
