import 'package:flutter/material.dart';
import 'package:seequenze_assignment_app/utils/fuctions.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List<String> _cupFillingOptions = [
    'Full',
    '1/2 Full',
    '3/4 Full',
    '1/4 Full'
  ];
  String _selectedCupFilling = 'Full';

  //! Custom Widgets==============================================================================

  //? Custom Cup Filling Widget-------------------------------------------->>>>>

  FilterChip customCupFillingWidget(
      {String title = '',
      bool isSelected = false,
      Function(bool)? onSelected}) {
    return FilterChip(
        selected: isSelected,
        showCheckmark: false,
        selectedColor: Colors.green,
        label: Text(
          title,
          style: theme.textTheme.titleSmall!.copyWith(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold),
        ),
        onSelected: onSelected!);
  }

//? Custom Switch Tile-------------------------------------------->>>>>

  Row customSwitchTile(String title, bool value) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.8,
          child: Switch.adaptive(
            value: value,
            onChanged: (_) {},
            activeColor: Colors.green,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey.withOpacity(0.5),
          ),
        ),
        addHorizontalSpace(10),
        Text(
          title,
          style: theme.textTheme.titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/coffee5.png',
            height: deviceHeight * 0.5,
            width: deviceWidth,
            fit: BoxFit.cover,
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.55,
              minChildSize: 0.55,
              builder: (context, scrollController) => SingleChildScrollView(
                    controller: scrollController,
                    physics: const ClampingScrollPhysics(),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: deviceHeight,
                      width: deviceWidth,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/app_background.jpg'),
                              fit: BoxFit.cover)),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lattè',
                                      style: theme.textTheme.titleLarge!
                                          .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    addVerticalSpace(10),
                                    Row(
                                      children: [
                                        Text('4.9',
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white)),
                                        addHorizontalSpace(15),
                                        const Icon(Icons.star,
                                            color: Colors.amber, size: 22),
                                        addHorizontalSpace(5),
                                        Text(
                                          '(259)',
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        addHorizontalSpace(15),
                                        Image.asset('assets/images/veg.png',
                                            height: 20, width: 20),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.8),
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.2)),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Row(
                                    children: [
                                      addHorizontalSpace(10),
                                      Text(
                                        '1',
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                                color: Colors.black54,
                                                fontFamily: '',
                                                fontWeight: FontWeight.bold),
                                      ),
                                      addHorizontalSpace(10),
                                      Container(
                                        height: double.infinity,
                                        width: 1.5,
                                        color: Colors.black54,
                                      ),
                                      DropdownButton(
                                          padding: EdgeInsets.zero,
                                          menuWidth: 40,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
                                          underline: Container(),
                                          iconEnabledColor: Colors.black54,
                                          iconDisabledColor: Colors.black54,
                                          items: const [
                                            DropdownMenuItem(
                                                value: 1,
                                                child: Text('1',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            DropdownMenuItem(
                                                value: 2,
                                                child: Text('2',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            DropdownMenuItem(
                                                value: 3,
                                                child: Text('3',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            DropdownMenuItem(
                                                value: 4,
                                                child: Text('4',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            DropdownMenuItem(
                                                value: 5,
                                                child: Text('5',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          ],
                                          onChanged: (_) {}),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            addVerticalSpace(15),
                            Text(
                              'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top',
                              style: theme.textTheme.labelMedium!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            addVerticalSpace(20),
                            Text(
                              'Choice of Cup Filling',
                              style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            addVerticalSpace(10),
                            Wrap(
                              spacing: 10,
                              children: [
                                customCupFillingWidget(
                                    title: _cupFillingOptions[0],
                                    isSelected: _selectedCupFilling ==
                                        _cupFillingOptions[0],
                                    onSelected: (_) {
                                      setState(() {
                                        _selectedCupFilling =
                                            _cupFillingOptions[0];
                                      });
                                    }),
                                customCupFillingWidget(
                                    title: _cupFillingOptions[1],
                                    isSelected: _selectedCupFilling ==
                                        _cupFillingOptions[1],
                                    onSelected: (_) {
                                      setState(() {
                                        _selectedCupFilling =
                                            _cupFillingOptions[1];
                                      });
                                    }),
                                customCupFillingWidget(
                                    title: _cupFillingOptions[2],
                                    isSelected: _selectedCupFilling ==
                                        _cupFillingOptions[2],
                                    onSelected: (_) {
                                      setState(() {
                                        _selectedCupFilling =
                                            _cupFillingOptions[2];
                                      });
                                    }),
                                customCupFillingWidget(
                                    title: _cupFillingOptions[3],
                                    isSelected: _selectedCupFilling ==
                                        _cupFillingOptions[3],
                                    onSelected: (_) {
                                      setState(() {
                                        _selectedCupFilling =
                                            _cupFillingOptions[3];
                                      });
                                    }),
                              ],
                            ),
                            addVerticalSpace(20),
                            Text(
                              'Choice of Milk',
                              style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            addVerticalSpace(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customSwitchTile('Soy Milk', false),
                                    customSwitchTile('Skim Milk', true),
                                    customSwitchTile('Full Cream Milk', false),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customSwitchTile('Oat Milk', false),
                                    customSwitchTile('Almond Milk', false),
                                    customSwitchTile(
                                        'Lactose Free Milk', false),
                                  ],
                                )
                              ],
                            ),
                            addVerticalSpace(20),
                            Text(
                              'Choice of Sugar',
                              style: theme.textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            addVerticalSpace(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customSwitchTile('Sugar x1', false),
                                    customSwitchTile('1/2 Sugar', true),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customSwitchTile('Sugar x2', false),
                                    customSwitchTile('No Sugar', false),
                                  ],
                                )
                              ],
                            ),
                            addVerticalSpace(kBottomNavigationBarHeight + 40)
                          ],
                        ),
                      ),
                    ),
                  ))
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xff323230),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Checkbox.adaptive(
              value: false,
              onChanged: (_) {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              side: const BorderSide(color: Colors.white),
            ),
            Text(
              'High Priority',
              style: theme.textTheme.titleMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            addHorizontalSpace(5),
            const Icon(Icons.error, color: Colors.redAccent),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 44,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.green, Colors.lightGreen]),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.green)),
              child: Text(
                'Submit',
                style: theme.textTheme.titleMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
