// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/shap_profile_sreen.png'),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 160.r),
                child: Center(
                  child: Image.asset(
                    'assets/images/icon_App.png',
                    width: 150,
                    height: 170,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 15.r),
            child: Text('Jawad Talal Rustom',
                style: TextStyle(
                    color: const Color(0xFF00a8b9),
                    fontFamily: 'Nunito_bold',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Text('Jawad Talal Rustom',
                style: TextStyle(
                    color: const Color(0xFF00a8b9),
                    fontFamily: 'Nunito_bold',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold)),
              Text('Jawad Talal Rustom',
                style: TextStyle(
                    color: const Color(0xFF00a8b9),
                    fontFamily: 'Nunito_bold',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold)),      

            ],
          ),
        ],
      ),
    );
  }
}
