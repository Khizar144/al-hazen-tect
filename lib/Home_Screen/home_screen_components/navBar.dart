import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/navbar_button.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/navbar_icon.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => DesktopNavBar(),
      tablet: (p0) => DesktopNavBar(),
      mobile: (p) => DesktopNavBar(),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 1.w),
            height: 10.h,
            child: Image.asset("assets/logo.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavBarButton(name: "Home", fun: () {}),
                NavBarButton(
                  name: "Products",
                  fun: () {},
                  productList: [
                    'Heart Diagnose',
                    'Lungs Diagnose',
                    'Eye Diagnose'
                  ],
                ),
                NavBarButton(name: "Research", fun: () {}),
                NavBarButton(name: "About Us", fun: () {}),
                NavBarButton(name: "Contact Us ", fun: () {}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5.w),
            child: Row(
              children: [
                NavBarIcon(name: "assets/facebook.png", fun: () {}),
                NavBarIcon(name: "assets/linkedin.png", fun: () {}),
                NavBarIcon(name: "assets/whatsapp.png", fun: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
