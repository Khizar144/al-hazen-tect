import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NavBarIcon extends StatelessWidget {
  final String name;
  final VoidCallback fun;
  const NavBarIcon({super.key, required this.name, required this.fun});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      height: 3.h,
      child: InkWell(
        onTap: () => fun,
        child: Image.asset(
          name,
        ),
      ),
    );
  }
}
