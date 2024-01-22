import 'bloc/frame_1321317428_bloc.dart';
import 'models/frame_1321317428_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class Frame1321317428Screen extends StatelessWidget {
  const Frame1321317428Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame1321317428Bloc>(
      create: (context) => Frame1321317428Bloc(Frame1321317428State(
        frame1321317428ModelObj: Frame1321317428Model(),
      ))
        ..add(Frame1321317428InitialEvent()),
      child: Frame1321317428Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Frame1321317428Bloc, Frame1321317428State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 352.v,
              width: 302.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 119.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 23.h,
                              top: 35.v,
                              bottom: 7.v,
                            ),
                            child: Text(
                              "lbl_chin".tr,
                              style: CustomTextStyles.displayLargePrimary,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 46.v),
                            child: Text(
                              "lbl_easy".tr,
                              style: CustomTextStyles.displayLargePrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDragon342x206,
                    height: 342.v,
                    width: 206.h,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
