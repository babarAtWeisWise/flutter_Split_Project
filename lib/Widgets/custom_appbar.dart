import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Hepler/assets.dart';
import '../Hepler/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final bool showBackButton;
  final Color? backgroundColor;
  final automaticallyImplyLeading;
  final bool centerTitle;
  final  leading;
  final  titleSpacing;

  CustomAppBar({
    this.title,
    this.actions,
    this.showBackButton = false,
    this.backgroundColor = Colors.transparent,
    this.automaticallyImplyLeading = true,
    this.centerTitle = false,
    this.leading ,
    this.titleSpacing=0.0 ,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      titleSpacing: titleSpacing,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      title: title,
      actions: actions,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: backgroundColor,

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    );
  }

}

