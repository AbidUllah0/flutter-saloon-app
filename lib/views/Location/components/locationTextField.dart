import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
      //  width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.arrow_back),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width:  MediaQuery.of(context).size.width-100,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Set Delivery Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabled: true,
                    suffixIcon: Icon(
                      Icons.share_location_outlined,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
