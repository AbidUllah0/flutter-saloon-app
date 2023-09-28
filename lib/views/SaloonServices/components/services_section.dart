import 'package:flutter/material.dart';

class ServicesSection extends StatefulWidget {
  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
  String selectedValue = 'Hair Cut';
  List<String> _list = ['Short', 'Medium', 'Tuner', 'Special'];
  int selectValue = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          children: [
            DropdownMenu(
              hintText: selectedValue,
              textStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              width: 320,
              initialSelection: selectedValue,
              onSelected: (value) {
                setState(
                  () {
                    selectedValue = value!;
                  },
                );
              },
              dropdownMenuEntries: _list.map((String item) {
                return DropdownMenuEntry(
                    enabled: false,
                    value: item,
                    label: item,
                    trailingIcon: Row(
                      children: [
                        Text('20 min'),
                        Text('\$30'),
                        Radio(
                          value: 1,
                          groupValue: selectValue,
                          onChanged: (value) {
                            setState(() {
                              selectValue = value!;
                            });
                          },
                        ),
                      ],
                    ));
              }).toList(),
            ),
            SizedBox(height: 8,),
            DropdownMenu(
              width: 320,
              initialSelection: 'Beard',
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'Beard', label: 'Beard')
              ],
            ),
            SizedBox(height: 8,),
            DropdownMenu(
              width: 320,
              initialSelection: 'Facials',
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'Facials', label: 'Facials')
              ],
            ),
            SizedBox(height: 8,),
            DropdownMenu(
              width: 320,
              initialSelection: 'Hair Color',
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'Hair Color', label: 'Hair Color')
              ],
            ),
            SizedBox(height: 8,),
            DropdownMenu(
              width: 320,
              initialSelection: 'Manicure',
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'Manicure', label: 'Manicure')
              ],
            ),
            SizedBox(height: 8,),
            DropdownMenu(
              width: 320,
              initialSelection: 'Beard',
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'Beard', label: 'Beard')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
