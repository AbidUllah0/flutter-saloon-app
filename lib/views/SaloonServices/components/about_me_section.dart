import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
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
        ],
      ),
    );
  }
}
