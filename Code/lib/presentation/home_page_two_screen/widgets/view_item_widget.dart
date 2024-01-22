import '../models/view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

// ignore: must_be_immutable
class ViewItemWidget extends StatelessWidget {
  ViewItemWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewItemModel viewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 146.v,
        width: 230.h,
        margin: EdgeInsets.only(
          left: 171.h,
          bottom: 5.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.h,
          ),
          gradient: LinearGradient(
            begin: Alignment(0.07, 1),
            end: Alignment(0.99, 0.01),
            colors: [
              appTheme.gray90002,
              appTheme.red90001,
            ],
          ),
        ),
      ),
    );
  }
}
