import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';

class MainTabScreen extends StatefulWidget {
  final StatefulNavigationShell navigationshell;
  const MainTabScreen(this.navigationshell, {super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  int _currentIndex = 0;

  void _goToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.navigationshell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/app_background.jpg',
            height: deviceHeight,
            width: deviceWidth,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: deviceHeight,
            width: deviceWidth,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.12),
                      Colors.transparent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.5, 0.9])),
          ),
          widget.navigationshell,
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: deviceWidth * 0.85,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => _goToPage(0),
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: _currentIndex == 0
                                ? BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.3),
                                    border: Border.all(
                                        color: Colors.white38, width: 1))
                                : null,
                            child: const Icon(Iconsax.home),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _goToPage(1),
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: _currentIndex == 1
                                ? BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.3),
                                    border: Border.all(
                                        color: Colors.white38, width: 1))
                                : null,
                            child: const Icon(Icons.person),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _goToPage(2),
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: _currentIndex == 2
                                ? BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.3),
                                    border: Border.all(
                                        color: Colors.white38, width: 1))
                                : null,
                            child: const Icon(Iconsax.card),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _goToPage(3),
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: _currentIndex == 3
                                ? BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.3),
                                    border: Border.all(
                                        color: Colors.white38, width: 1))
                                : null,
                            child: const Icon(Iconsax.shopping_bag),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _goToPage(4),
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: _currentIndex == 4
                                ? BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.3),
                                    border: Border.all(
                                        color: Colors.white38, width: 1))
                                : null,
                            child: const Icon(Iconsax.message),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              addVerticalSpace(20)
            ],
          ),
        ],
      ),
    );
  }
}
