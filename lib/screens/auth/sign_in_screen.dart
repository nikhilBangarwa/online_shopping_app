import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:online_shopping_app/utils/app_constant.dart';

import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isValueChar) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppConstant.appScendoryColor,
            title: const Text(
              'Sign In ',style: TextStyle(
              color: AppConstant.appTextColor
            ),
            ),
          ),
          body: Column(
            children: [
              isValueChar
              ? const Text('WelCome To My App'):
              Column(
                children: [
                  Lottie.asset('assets/splash-icon.json'),
                ],
              ),
              Column(
                    children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'Email',
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.visibility_off),
                            prefixIcon: const Icon(Icons.password),
                            hintText: 'password',
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Material(
                      child: Container(
                        width: Get.width / 2,
                        height: Get.height / 12,
                        decoration: BoxDecoration(
                          color: AppConstant.appScendoryColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextButton(
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: AppConstant.appTextColor,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                      const Text(
                        'Don"t have an Account?',
                        style: TextStyle(
                          color: AppConstant.appScendoryColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                          InkWell(
                            onTap: () => Get.off(()=> const SignUpScreen()),
                            child: const Text('Sing Up', style: TextStyle(
                              color: AppConstant.appScendoryColor,
                              fontWeight: FontWeight.bold
                            ),),
                          )
                    ])
                  ],
                ),
                  ]
                    )
        );
      },
    );
  }
}
