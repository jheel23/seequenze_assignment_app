import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seequenze_assignment_app/router/app_routes.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';

class CustomInstantCardWidget extends StatelessWidget {
  const CustomInstantCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.detailsScreen),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latté',
                  style:
                      theme.textTheme.titleLarge!.copyWith(color: Colors.white),
                ),
                Row(
                  children: [
                    Text('4.9 ⭐ (469)',
                        style: theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    addHorizontalSpace(10),
                    Image.asset(
                      'assets/images/veg.png',
                      height: 15,
                    )
                  ],
                ),
                SizedBox(
                  width: deviceWidth * 0.5,
                  child: Text(
                    'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'assets/images/coffee4.png',
                    width: deviceWidth * 0.25,
                    height: deviceWidth * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -15,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green),
                    child: Text(
                      'ADD',
                      style: theme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
