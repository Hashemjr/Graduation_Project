import 'package:flutter/material.dart';
import 'package:chineasy/presentation/choose_accountone_screen/choose_accountone_screen.dart';
import 'package:chineasy/presentation/choose_accounttwo_screen/choose_accounttwo_screen.dart';
import 'package:chineasy/presentation/choose_accountthree_screen/choose_accountthree_screen.dart';
import 'package:chineasy/presentation/signup_screen/signup_screen.dart';
import 'package:chineasy/presentation/signuptwo_screen/signuptwo_screen.dart';
import 'package:chineasy/presentation/signupone_screen/signupone_screen.dart';
import 'package:chineasy/presentation/login_screen/login_screen.dart';
import 'package:chineasy/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:chineasy/presentation/forget_passwordone_screen/forget_passwordone_screen.dart';
import 'package:chineasy/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:chineasy/presentation/reset_passwordtwo_screen/reset_passwordtwo_screen.dart';
import 'package:chineasy/presentation/profile_leaderboard_screen/profile_leaderboard_screen.dart';
import 'package:chineasy/presentation/courses_test_container1_screen/courses_test_container1_screen.dart';
import 'package:chineasy/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:chineasy/presentation/app_navigation_screen/app_navigation_screen.dart';
<<<<<<< HEAD
import 'package:chineasy/presentation/Flashcards/home-page.dart';
=======
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a

import '../presentation/profile_state_test_page/profile_state_test_page.dart';

class AppRoutes {
  static const String chooseAccountoneScreen = '/choose_accountone_screen';

  static const String chooseAccounttwoScreen = '/choose_accounttwo_screen';

  static const String chooseAccountthreeScreen = '/choose_accountthree_screen';

  static const String signupScreen = '/signup_screen';

  static const String signuptwoScreen = '/signuptwo_screen';

  static const String signuponeScreen = '/signupone_screen';

  static const String loginScreen = '/login_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPasswordoneScreen = '/forget_passwordone_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordtwoScreen = '/reset_passwordtwo_screen';

  static const String profileLeaderboardScreen = '/profile_leaderboard_screen';

  static const String coursesTestContainerPage = '/courses_test_container_page';

<<<<<<< HEAD
  static const String FlashcardsHomePage = '/home_page';

=======
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
  static const String coursesTestContainer1Screen =
      '/courses_test_container1_screen';

  static const String profileStateTestPage = '/profile_state_test_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        chooseAccountoneScreen: ChooseAccountoneScreen.builder,
        chooseAccounttwoScreen: ChooseAccounttwoScreen.builder,
        chooseAccountthreeScreen: ChooseAccountthreeScreen.builder,
        signupScreen: SignupScreen.builder,
        signuptwoScreen: SignuptwoScreen.builder,
        signuponeScreen: SignuponeScreen.builder,
        loginScreen: LoginScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        forgetPasswordoneScreen: ForgetPasswordoneScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordtwoScreen: ResetPasswordtwoScreen.builder,
        profileLeaderboardScreen: ProfileLeaderboardScreen.builder,
        profileStateTestPage: ProfileStateTestPage.builder,
        coursesTestContainer1Screen: CoursesTestContainer1Screen.builder,
        homePageContainerScreen: HomePageContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
<<<<<<< HEAD
        FlashcardsHomePage: (context) => const HomePage(),
=======
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
        initialRoute: AppNavigationScreen.builder
      };
}
