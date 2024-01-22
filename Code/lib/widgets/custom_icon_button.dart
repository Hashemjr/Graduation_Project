import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(13.h),
                  border: Border.all(
                    color: appTheme.gray100.withOpacity(0.5),
                    width: 1.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.12, 0),
                    end: Alignment(0.88, 1),
                    colors: [
                      appTheme.amber40026,
                      appTheme.pinkA20026,
                    ],
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan300,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get outlineRedF => BoxDecoration(
        color: appTheme.red900,
        borderRadius: BorderRadius.circular(27.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.red9007f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}
