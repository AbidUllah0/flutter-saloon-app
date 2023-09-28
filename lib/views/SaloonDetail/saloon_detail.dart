import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SaloonDetail/components/top_icons.dart';
import 'package:barber_saloon_app/views/SaloonServices/saloon_services.dart';
import 'package:barber_saloon_app/widgets/customButton.dart';
import 'package:flutter/material.dart';

class SaloonDetail extends StatelessWidget {
  const SaloonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset('assets/images/saloon.png'),
            Positioned(left: 10, right: 10, top: 50, child: TopIcons()),
            Positioned(
              bottom: 0,
              top: 370,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Barbar 1',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Pellentesque egestas sit tincidunt porta leo the conse ctetur. At nisl semper urna vitae sed is vehicula. Pu rus dis at nibh quis. Convallis odio semper urna vitae sed vehicula.Pellentesque egestas sit tincidunt porta leo the conse ctetur. At nisl semper urna vitae sed is vehicula. Pu rus dis at nibh quis. Convallis odio semper urna vitae sed vehicula.Pellentesque egestas sit tincidunt porta leo the conse ctetur. At nisl semper urna vitae sed is vehicula. Pu rus dis at nibh quis. Convallis odio semper urna vitae sed vehicula.'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      text: 'Book Now',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SaloonServices(),
                          ),
                        );
                      },
                      color: AppColors.btnColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
