import 'bloc/courses_test_container1_bloc.dart';
import 'models/courses_test_container1_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/presentation/courses_test_container_page/courses_test_container_page.dart';
import 'package:chineasy/presentation/profile_state_test_page/profile_state_test_page.dart';
import 'package:chineasy/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CoursesTestContainer1Screen extends StatelessWidget {
  CoursesTestContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CoursesTestContainer1Bloc>(
        create: (context) => CoursesTestContainer1Bloc(
            CoursesTestContainer1State(
                coursesTestContainer1ModelObj: CoursesTestContainer1Model()))
          ..add(CoursesTestContainer1InitialEvent()),
        child: CoursesTestContainer1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesTestContainer1Bloc, CoursesTestContainer1State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.black900, appTheme.gray90001])),
                  child: Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.coursesTestContainerPage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(context, routeSetting.name!),
                          transitionDuration: Duration(seconds: 0)))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Courses:
        return AppRoutes.coursesTestContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileStateTestPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.coursesTestContainerPage:
        return CoursesTestContainerPage.builder(context);
      case AppRoutes.profileStateTestPage:
        return ProfileStateTestPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
