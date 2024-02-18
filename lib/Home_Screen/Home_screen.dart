import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/industries_section.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/navBar.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/service.dart';
import 'package:my_web_app/Home_Screen/home_screen_components/team_members.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
// NavBar
          NavBar(),
// Main Screen
          Container(
            height: 90.h,
            width: 100.w,
            child: Image.asset(
              "assets/ds.png",
              fit: BoxFit.fill,
            ),
          ),
          // welcome Screen
          Container(
            padding: EdgeInsets.only(left: 5.w, top: 5.h),
            color: Color.fromARGB(255, 234, 234, 234),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Al-Hazen Tech",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: Text(
                        "The Artificial Intelligence (AI) Community of Pakistan (AICP) works in more than 100 universities across Pakistan to spread awareness among students, develop a community of AI engineers, and promote a research culture among students. AICPs’ primary objective is to gather and spread knowledge regarding AI to develop and improve the AI industry. We are upgrading this field through research and development of new algorithms, techniques, and applications of AI.",
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 70.h,
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/team.png"),
                )
              ],
            ),
          ),

          // Services
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 5.h),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Flexible(
                  flex: 2,
                  child: Image.asset(
                    "assets/team.png",
                    height: 60.h,
                  ),
                ),
                SizedBox(width: 5.w),
                Flexible(
                  flex: 3,
                  child: ServicesSection(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          // Out Team
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Our Team",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Wrap(
                  children: [
                    TeamMembers(
                        imagePath: 'assets/sir.png',
                        name: 'Dr Ahmad Saeed',
                        position: 'Head'),
                    TeamMembers(
                        imagePath: 'assets/rizwan.png',
                        name: 'Rizwan Shah',
                        position: 'Manager'),
                    TeamMembers(
                        imagePath: 'assets/khizar.jpeg',
                        name: 'Khizar',
                        position: 'Manager'),
                    TeamMembers(
                        imagePath: 'assets/zainab.png',
                        name: 'Zainab Tahir',
                        position: 'Web Developer'),
                  ],
                ),
              ),
            ],
          ),
          IndustriesSection(),
        ],
      ),
    ));
  }
}
