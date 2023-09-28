import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class PriceRange extends StatefulWidget {
  const PriceRange({super.key});

  @override
  State<PriceRange> createState() => _PriceRangeState();
}

class _PriceRangeState extends State<PriceRange> {
  //RangeValues _currentRangeValues = RangeValues(0, 20);
  SfRangeValues _sfCurrentRangeValues = SfRangeValues(0, 20);

  @override
  Widget build(BuildContext context) {
    return SfRangeSlider(
        values: _sfCurrentRangeValues,
        showLabels: true,
        min: 0,
        max: 40,
        interval: 20,
        onChanged: (values) {
          setState(() {
            _sfCurrentRangeValues = values;
          });
        });

    // RangeSlider(
    //   onChangeStart: (RangeValues values){
    //     setState(() {
    //       RangeValues val=values;
    //       _currentRangeValues.start.round().toString();
    //       _currentRangeValues.end.round().toString();
    //     });
    //   },
    //   max: 40,
    //   divisions: 4,
    //   labels: RangeLabels(
    //     _currentRangeValues.start.round().toString(),
    //     _currentRangeValues.end.round().toString(),
    //
    //   ),
    //   values: _currentRangeValues,
    //   onChanged: (RangeValues values) {
    //     setState(() {
    //       _currentRangeValues=values;
    //     });
    //
    //   },
    // );
  }
}
