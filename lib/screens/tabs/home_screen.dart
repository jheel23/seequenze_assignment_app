import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';
import 'package:seequenze_assignment_app/widget/custom_instant_card_widget.dart';
import 'package:seequenze_assignment_app/widget/custom_popular_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                      decoration: const BoxDecoration(
                        color: Colors.white10,
                      ),
                      child: Column(
                        children: [
                          addVerticalSpace(10),
                          Row(
                            children: [
                              Text(
                                '👋',
                                style: theme.textTheme.titleLarge,
                              ),
                              addHorizontalSpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '21/10/2024',
                                    style: theme.textTheme.titleSmall!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    'Jheel Johari',
                                    style: theme.textTheme.titleSmall!.copyWith(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 13),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(7)),
                                child: const Icon(Iconsax.shopping_bag4),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white.withOpacity(0.2),
                                          blurRadius: 10,
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.green)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    'assets/images/user.jpg',
                                    height: 40,
                                  ),
                                ),
                              )
                            ],
                          ),
                          addVerticalSpace(20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white.withOpacity(0.9),
                            ),
                            child: Row(
                              children: [
                                addHorizontalSpace(10),
                                const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                addHorizontalSpace(10),
                                Expanded(
                                  child: TextField(
                                    onTapOutside: (event) =>
                                        FocusScope.of(context).unfocus(),
                                    decoration: InputDecoration(
                                        hintText: 'Search favorite Beverages',
                                        hintStyle: theme.textTheme.titleSmall!
                                            .copyWith(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                        border: InputBorder.none),
                                  ),
                                ),
                                const Icon(Iconsax.sort, color: Colors.grey),
                                addHorizontalSpace(10)
                              ],
                            ),
                          )
                        ],
                      )),
                  addVerticalSpace(15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Most Popular Beverages',
                        style: theme.textTheme.titleLarge!.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  addVerticalSpace(15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        addHorizontalSpace(20),
                        ...List.generate(
                            3,
                            (index) => Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: CustomPopularCardWidget(index: index)))
                      ],
                    ),
                  ),
                  addVerticalSpace(30),
                  Container(
                    color: Colors.white10,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Get it instantly',
                            style: theme.textTheme.titleLarge!.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                        addVerticalSpace(15),
                        ...List.generate(
                            3,
                            (index) => Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: const CustomInstantCardWidget()))
                      ],
                    ),
                  ),
                  addVerticalSpace(kBottomNavigationBarHeight + 40)
                ],
              ),
            )
          ],
        ));
  }
}
