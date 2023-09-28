import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/NearBySaloon/Components/sort_by_menu.dart';
import 'package:barber_saloon_app/views/SaloonDetail/saloon_detail.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

class RowIcons extends StatefulWidget {
  const RowIcons({super.key});

  @override
  State<RowIcons> createState() => _RowIconsState();
}

class _RowIconsState extends State<RowIcons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.sort,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          color: AppColors.appBackgroundColor,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sorted By'),
                                  Icon(Icons.cancel_outlined),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              height: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35),
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SortByMenu(
                                    text: 'Most Popular',
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SortByMenu(
                                    text: 'Nearby Barbar',
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SortByMenu(
                                    text: 'Rating: 4-5 Star',
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SortByMenu(
                                    text: 'Rating: 1-3 Star',
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SortByMenu(
                                    text: 'Rating',
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomButton(
                                    text: 'Apply',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SaloonDetail(),
                                        ),
                                      );
                                    },
                                    color: AppColors.btnColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text(
                'Sort',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.indeterminate_check_box_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.check_box_outline_blank,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}
