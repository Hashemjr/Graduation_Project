import 'bloc/welcome_page_one_bloc.dart';
import 'models/welcome_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class WelcomePageOneScreen extends StatelessWidget {
  const WelcomePageOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomePageOneBloc>(
      create: (context) => WelcomePageOneBloc(WelcomePageOneState(
        welcomePageOneModelObj: WelcomePageOneModel(),
      ))
        ..add(WelcomePageOneInitialEvent()),
      child: WelcomePageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomePageOneBloc, WelcomePageOneState>(
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
              child: SizedBox(
                width: double.maxFinite,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgStatus,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 763.v,
                        ),
                        child: Text(
                          "lbl_9_30".tr,
                          style: CustomTextStyles.bodyMediumRobotoPrimary,
                        ),
                      ),
                      Spacer(
                        flex: 53,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 760.v),
                      ),
                      Spacer(
                        flex: 46,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWifi,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 764.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIcSignalCellular4Bar,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 764.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBattery,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 764.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
