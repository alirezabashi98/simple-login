import 'package:flutter/material.dart';
import 'package:simple_login/blob_random.dart';
import 'package:simple_login/custom_button.dart';
import 'package:simple_login/custom_text_field.dart';

import 'my_behavior.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xff192028),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// anim background
                const Positioned(
                    top: -180,
                    right: -180,
                    child: BlobRandom(
                      size: 550,
                    )),
                const Positioned(
                    bottom: -180,
                    left: -130,
                    child: BlobRandom(
                      size: 450,
                    )),
                const Positioned(
                    bottom: 390,
                    left: 32,
                    child: BlobRandom(
                      size: 180,
                    )),
                const Positioned(
                    bottom: 290,
                    left: 28,
                    child: BlobRandom(
                      size: 120,
                    )),
                const Positioned(
                    bottom: 350,
                    right: 25,
                    child: BlobRandom(
                      size: 80,
                    )),

                /// body
                Positioned(
                  top: 20,
                  bottom: 20,
                  right: 20,
                  left: 20,
                  child: SafeArea(
                    child: Column(
                      children: [
                        const Text(
                          "AlirezaBashi98",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const CustomTextField(
                            hintText: 'Email',
                            isEmail: true,
                            icon: Icons.email_outlined),
                        const SizedBox(height: 18),
                        const CustomTextField(
                            hintText: 'Password',
                            isPassword: true,
                            icon: Icons.password_outlined),
                        const SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              text: 'Login',
                              onTap: () {},
                              width: 150,
                            ),
                            CustomButton(
                              text: 'Forgot Password!',
                              onTap: () {},
                              width: 150,
                            ),
                          ],
                        ),
                        const Spacer(),
                        CustomButton(
                          text: 'create new account',
                          onTap: () {},
                          width: 220,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
