import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app_constant.dart';
import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Get.offAll(()=> const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appScendoryColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Lottie.asset('assets/splash-icon.json'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            width: Get.width,
            child: Text(
              AppConstant.appPowerBy,
              style: const TextStyle(
                color: AppConstant.appTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}
