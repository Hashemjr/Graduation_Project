import 'bloc/welcome_page_four_bloc.dart';
import 'models/welcome_page_four_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class WelcomePageFourScreen extends StatelessWidget {
  const WelcomePageFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomePageFourBloc>(
      create: (context) => WelcomePageFourBloc(WelcomePageFourState(
        welcomePageFourModelObj: WelcomePageFourModel(),
      ))
        ..add(WelcomePageFourInitialEvent()),
      child: WelcomePageFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomePageFourBloc, WelcomePageFourState>(
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
                  colors: [
                    appTheme.black90001,
                    appTheme.gray90001,
                  ],
                ),
              ),
              child: Container(
                height: SizeUtils.height,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 227.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 8.v,
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 110.h,
                          top: 105.v,
                        ),
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(23.h, 144.v, 10.h, 123.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 7.v),
                              child: Text(
                                "lbl_chin".tr,
                                style: theme.textTheme.displayLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 11.v),
                              child: Text(
                                "lbl_easy".tr,
                                style: theme.textTheme.displayLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDragon,
                      height: 342.v,
                      width: 206.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
