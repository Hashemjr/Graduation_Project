import 'package:flutter/material.dart';
import 'package:grad_project/presentation/welcome_page_three_screen/welcome_page_three_screen.dart';
import 'package:grad_project/presentation/welcome_page_two_screen/welcome_page_two_screen.dart';
import 'package:grad_project/presentation/welcome_page_four_screen/welcome_page_four_screen.dart';
import 'package:grad_project/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:grad_project/presentation/welcome_page_one_screen/welcome_page_one_screen.dart';
import 'package:grad_project/presentation/frame_1321317428_screen/frame_1321317428_screen.dart';
import 'package:grad_project/presentation/choose_account_three_screen/choose_account_three_screen.dart';
import 'package:grad_project/presentation/choose_account_one_screen/choose_account_one_screen.dart';
import 'package:grad_project/presentation/choose_account_two_screen/choose_account_two_screen.dart';
import 'package:grad_project/presentation/choose_account_screen/choose_account_screen.dart';
import 'package:grad_project/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:grad_project/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:grad_project/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:grad_project/presentation/signup_three_screen/signup_three_screen.dart';
import 'package:grad_project/presentation/signup_screen/signup_screen.dart';
import 'package:grad_project/presentation/home_page_seven_screen/home_page_seven_screen.dart';
import 'package:grad_project/presentation/home_page_five_screen/home_page_five_screen.dart';
import 'package:grad_project/presentation/home_page_six_screen/home_page_six_screen.dart';
import 'package:grad_project/presentation/home_page_one_screen/home_page_one_screen.dart';
import 'package:grad_project/presentation/home_page_four_screen/home_page_four_screen.dart';
import 'package:grad_project/presentation/home_page_three_screen/home_page_three_screen.dart';
import 'package:grad_project/presentation/login_screen/login_screen.dart';
import 'package:grad_project/presentation/forget_password_one_screen/forget_password_one_screen.dart';
import 'package:grad_project/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:grad_project/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:grad_project/presentation/reset_password_one_screen/reset_password_one_screen.dart';
import 'package:grad_project/presentation/home_page_two_screen/home_page_two_screen.dart';
import 'package:grad_project/presentation/profile_leaderboard_screen/profile_leaderboard_screen.dart';
import 'package:grad_project/presentation/profile_stats_screen/profile_stats_screen.dart';
import 'package:grad_project/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomePageThreeScreen = '/welcome_page_three_screen';

  static const String welcomePageTwoScreen = '/welcome_page_two_screen';

  static const String welcomePageFourScreen = '/welcome_page_four_screen';

  static const String welcomePageScreen = '/welcome_page_screen';

  static const String welcomePageOneScreen = '/welcome_page_one_screen';

  static const String frame1321317428Screen = '/frame_1321317428_screen';

  static const String chooseAccountThreeScreen = '/choose_account_three_screen';

  static const String chooseAccountOneScreen = '/choose_account_one_screen';

  static const String chooseAccountTwoScreen = '/choose_account_two_screen';

  static const String chooseAccountScreen = '/choose_account_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String signupTwoScreen = '/signup_two_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String signupThreeScreen = '/signup_three_screen';

  static const String signupScreen = '/signup_screen';

  static const String homePageSevenScreen = '/home_page_seven_screen';

  static const String homePageFiveScreen = '/home_page_five_screen';

  static const String homePageSixScreen = '/home_page_six_screen';

  static const String homePageOneScreen = '/home_page_one_screen';

  static const String homePageFourScreen = '/home_page_four_screen';

  static const String homePageThreeScreen = '/home_page_three_screen';

  static const String loginScreen = '/login_screen';

  static const String forgetPasswordOneScreen = '/forget_password_one_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordOneScreen = '/reset_password_one_screen';

  static const String homePageTwoScreen = '/home_page_two_screen';

  static const String coursesPage = '/courses_page';

  static const String profileLeaderboardScreen = '/profile_leaderboard_screen';

  static const String profileStatsScreen = '/profile_stats_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomePageThreeScreen: WelcomePageThreeScreen.builder,
        welcomePageTwoScreen: WelcomePageTwoScreen.builder,
        welcomePageFourScreen: WelcomePageFourScreen.builder,
        welcomePageScreen: WelcomePageScreen.builder,
        welcomePageOneScreen: WelcomePageOneScreen.builder,
        frame1321317428Screen: Frame1321317428Screen.builder,
        chooseAccountThreeScreen: ChooseAccountThreeScreen.builder,
        chooseAccountOneScreen: ChooseAccountOneScreen.builder,
        chooseAccountTwoScreen: ChooseAccountTwoScreen.builder,
        chooseAccountScreen: ChooseAccountScreen.builder,
        homePageContainerScreen: HomePageContainerScreen.builder,
        signupTwoScreen: SignupTwoScreen.builder,
        signupOneScreen: SignupOneScreen.builder,
        signupThreeScreen: SignupThreeScreen.builder,
        signupScreen: SignupScreen.builder,
        homePageSevenScreen: HomePageSevenScreen.builder,
        homePageFiveScreen: HomePageFiveScreen.builder,
        homePageSixScreen: HomePageSixScreen.builder,
        homePageOneScreen: HomePageOneScreen.builder,
        homePageFourScreen: HomePageFourScreen.builder,
        homePageThreeScreen: HomePageThreeScreen.builder,
        loginScreen: LoginScreen.builder,
        forgetPasswordOneScreen: ForgetPasswordOneScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordOneScreen: ResetPasswordOneScreen.builder,
        homePageTwoScreen: HomePageTwoScreen.builder,
        profileLeaderboardScreen: ProfileLeaderboardScreen.builder,
        profileStatsScreen: ProfileStatsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomePageThreeScreen.builder
      };
}
