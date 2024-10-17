import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';

class PlaceholderTab extends StatelessWidget {
  const PlaceholderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: Text(
          'Work under progress!, Stay tuned.\n😎',
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineLarge!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
