import 'bloc/home_page_container_bloc.dart';
import 'models/home_page_container_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/presentation/courses_page/courses_page.dart';
import 'package:grad_project/presentation/home_page/home_page.dart';
import 'package:grad_project/widgets/custom_bottom_bar.dart';
import 'package:grad_project/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageContainerBloc>(
        create: (context) => HomePageContainerBloc(HomePageContainerState(
            homePageContainerModelObj: HomePageContainerModel()))
          ..add(HomePageContainerInitialEvent()),
        child: HomePageContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageContainerBloc, HomePageContainerState>(
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
                          colors: [appTheme.black90001, appTheme.gray90001])),
                  child: Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.homePage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(context, routeSetting.name!),
                          transitionDuration: Duration(seconds: 0)))),
              bottomNavigationBar: _buildNinetyNineId(context),
              floatingActionButton: CustomFloatingButton(
                  height: 81, width: 53, child: Icon(Icons.add)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked));
    });
  }

  /// Section Widget
  Widget _buildNinetyNineId(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.coursesPage:
        return CoursesPage.builder(context);
      default:
        return HomePage.builder(context);
    }
  }
}
