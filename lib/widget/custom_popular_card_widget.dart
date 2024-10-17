import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seequenze_assignment_app/router/app_routes.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';

class CustomPopularCardWidget extends StatelessWidget {
  final int index;
  const CustomPopularCardWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.detailsScreen);
      },
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            top: 0,
            left: 1.2,
            child: Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: const Border(
                  top: BorderSide(width: 1.0, color: Colors.white),
                  left: BorderSide(width: 1.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white24,
                border: Border.all(color: Colors.white.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(7)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/coffee${index + 1}.png',
                  height: deviceHeight * 0.2,
                ),
                addVerticalSpace(10),
                Text('Hot Cappuccino',
                    style: theme.textTheme.titleMedium!.copyWith(
                        color: Colors.white60, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Espresso, Steamed milk',
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: Colors.black54,
                              fontSize: 10,
                              fontFamily: '',
                            )),
                        Text('4.9 ⭐ (469)',
                            style: theme.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.bold))
                      ],
                    ),
                    addHorizontalSpace(10),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green),
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
