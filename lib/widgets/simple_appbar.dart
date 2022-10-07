import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? subTitle;
  final double? elevation;
  final PreferredSizeWidget? bottom;
  final double? bottomHeight;
  final Color? backgroundColor;
  final Color? titleColor;
  final List<Widget>? actions;

  const SimpleAppBar({Key? key,this.actions, required this.title, this.subTitle, this.elevation, this.bottom, this.bottomHeight, this.backgroundColor, this.titleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      title: Text(
        title,
        style: TextStyle(color:titleColor?? Colors.black),
      ),
      iconTheme: IconThemeData(color:titleColor?? Colors.grey),
      elevation: elevation ?? 0,
      bottom: bottom,
      actions: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...?actions
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(bottom != null ? kToolbarHeight + (bottomHeight ?? 0) : kToolbarHeight);
}
