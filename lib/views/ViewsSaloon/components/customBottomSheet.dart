import 'package:flutter/material.dart';

import '../../HomeScreen/components/barbarVertData.dart';

Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.only(top: 20),
        //margin: EdgeInsets.all(10),
        height: 653,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shaves',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Over 10 Saloons',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff767676),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: BarbarVertData(),
            ),
          ],
        ),
      );
    },
  );
}
