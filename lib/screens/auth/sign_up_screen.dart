import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:online_shopping_app/screens/auth/sign_in_screen.dart';
import 'package:online_shopping_app/utils/app_constant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isValueChar) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppConstant.appScendoryColor,
              title: const Text(
                'Sign Up ', style: TextStyle(
                  color: AppConstant.appTextColor
              ),
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                  children: [
                    const SizedBox(height: 12),
                    Container(
                      alignment: Alignment.center,
                        child: const Text('WelCome Too My App',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                    )
                    ),
                    Column(
                      children: [
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
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                hintText: 'User Name',
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
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.call),
                                hintText: 'Phone Number',
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
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.location_pin),
                                hintText: 'City',
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
                        const SizedBox(height:
                        12),
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
                                "Sign Up",
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
                                ' Already have an Account? ',
                                style: TextStyle(
                                    color: AppConstant.appScendoryColor,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.off(()=> const SignInScreen()),
                                child: const Text('Sing In', style: TextStyle(
                                    color: AppConstant.appScendoryColor,
                                    fontWeight: FontWeight.bold
                                ),),
                              )
                            ])
                      ],
                    ),
                  ]
              ),
            )
        );
      },
    );
  }
}
