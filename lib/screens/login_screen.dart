import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seequenze_assignment_app/router/app_routes.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/app_background.jpg',
            height: deviceHeight,
            width: deviceWidth,
            fit: BoxFit.cover,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: const EdgeInsets.all(20),
                width: deviceWidth * 0.85,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                  border: Border.all(color: Colors.white, width: 0.4),
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 60,
                    ),
                    addVerticalSpace(15),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Swift\n',
                          style: theme.textTheme.displayMedium!.copyWith(
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: 'Café',
                              style: theme.textTheme.displaySmall!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                    addVerticalSpace(10),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 15,
                              spreadRadius: 1)
                        ],
                      ),
                      child: Text(
                        '"Latte but never late"',
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: Colors.white70),
                      ),
                    ),
                    addVerticalSpace(20),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'User Name',
                            hintStyle: theme.textTheme.labelLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        addVerticalSpace(10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: theme.textTheme.labelLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        addVerticalSpace(40),
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.homeScreen),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 15,
                                    spreadRadius: 1)
                              ],
                              gradient: LinearGradient(
                                  colors: [
                                    theme.colorScheme.primary,
                                    const Color(0xffA7745A)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: deviceWidth * 0.6,
                            height: 50,
                            child: Text(
                              'Login',
                              style: theme.textTheme.titleMedium!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        addVerticalSpace(30),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: Colors.white, width: 0.8),
                              minimumSize: Size(deviceWidth * 0.6, 50)),
                          onPressed: () => context.push(AppRoutes.homeScreen),
                          child: Text(
                            'Sign Up',
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        addVerticalSpace(20),
                        TextButton(
                          onPressed: showDevToast,
                          child: Text(
                            'Privacy Policy',
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
