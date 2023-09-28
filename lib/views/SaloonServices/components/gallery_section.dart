import 'package:barber_saloon_app/utils/app_colors.dart';
import 'package:barber_saloon_app/views/SaloonServices/components/gallery_video.dart';
import 'package:flutter/material.dart';

import 'gallery_photo.dart';

class GallerySection extends StatefulWidget {
  const GallerySection({super.key});

  @override
  State<GallerySection> createState() => _GallerySectionState();
}

class _GallerySectionState extends State<GallerySection>
    with TickerProviderStateMixin {
  Color selectedColor = AppColors.btnColor;
  Color unSelectedColor = Color(0xff626262);
  Color selectedFontColor = Colors.white;
  Color unSelectedFontColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SingleChildScrollView(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorWeight: 0.1,
            tabs: [
              InkWell(
                onTap: () {
                  setState(() {
                    Color temp = selectedColor;
                    selectedColor = unSelectedColor;
                    unSelectedColor = temp;
                    Color tempFont = selectedFontColor;
                    selectedFontColor = unSelectedFontColor;
                    unSelectedFontColor = tempFont;
                  });
                },
                child: Tab(
                  height: 50,
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      color: selectedColor,
                    ),
                    child: Center(
                      child: Text(
                        'Photo',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: selectedFontColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Color temp = unSelectedColor;
                    unSelectedColor = selectedColor;
                    selectedColor = temp;
                    Color tempFont = unSelectedFontColor;
                    unSelectedFontColor = selectedFontColor;
                    selectedFontColor = tempFont;
                  });
                },
                child: Tab(
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: unSelectedColor,
                    ),
                    child: Center(
                      child: Text(
                        'Video',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: unSelectedFontColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
              controller: _tabController,
              children: [GalleryPhoto(), GalleryVideo()],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'dart:ffi';
//
// import 'package:barber_saloon_app/utils/app_colors.dart';
// import 'package:flutter/material.dart';
//
// class GallerySection extends StatefulWidget {
//   @override
//   State<GallerySection> createState() => _GallerySectionState();
// }
//
// class _GallerySectionState extends State<GallerySection> {
//   Color photoColor = AppColors.btnColor;
//   Color videoColor = Color(0xff626262);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     Color temp = this.photoColor;
//                     this.photoColor = this.videoColor;
//                     this.videoColor = temp;
//                   });
//                 },
//                 child: Container(
//                   height: 60,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       bottomLeft: Radius.circular(30),
//                     ),
//                     color: photoColor,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Photo',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     Color temp = videoColor;
//                     videoColor = photoColor;
//                     photoColor = temp;
//                   });
//                 },
//                 child: Container(
//                   height: 60,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(30),
//                       bottomRight: Radius.circular(30),
//                     ),
//                     color: videoColor,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Video',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
