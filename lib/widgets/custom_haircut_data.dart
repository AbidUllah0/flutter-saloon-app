import 'package:flutter/material.dart';

import '../views/SelectServices/components/select_dat_time.dart';

class CustomHairCutData extends StatefulWidget {
  @override
  State<CustomHairCutData> createState() => _CustomHairCutDataState();
}

class _CustomHairCutDataState extends State<CustomHairCutData> {
  String selectedValue = 'Hair Cut';
  List<String> dropdownItems = [
    'Hair Cut',
    'Short',
    'Medium',
    'Tuner',
    'Special'
  ];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: DropdownButton(
          value: selectedValue,
          borderRadius: BorderRadius.circular(8),
          elevation: 5,
          hint: Text(
            'Hair Cut',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          isExpanded: true,
          menuMaxHeight: 300,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value!;
            });
          },
          items: dropdownItems.map((item) {
            return DropdownMenuItem<String>(
              enabled: true,
              value: item,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectDateTime(),
                          ),
                        );
                      },
                      child: Text(item)),
                  Row(
                    children: [
                      Text('20 min'),
                      Text('30'),
                      Radio(
                        value: 1,
                        groupValue: selectedIndex,
                        onChanged: (value) {
                          setState(() {
                            selectedIndex = value!;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
