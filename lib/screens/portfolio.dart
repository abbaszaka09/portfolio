import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bg_profile_image.dart';
import 'package:portfolio/widgets/person_gallary.dart';
import 'package:portfolio/widgets/profile_info.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Center(
            child: Text(
          'Photographers',
          style:
              TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Irish'),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20,top: 30),
                  child: Stack(
                    children: [
                      ProfileImage(),
                      ProfileInfo(),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 25.0, top: 5, bottom: 10),
                  child: Text(
                    'Recent work',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                PersonGallary(),
              ],
            ),


            // PositionWidget is used for top setting icon above the background image

            Positioned(
                top: 3,
                right: 20,
                child: Icon(
                  Icons.settings_input_component_outlined,
                  color: Colors.black45,
                  size: 25,
                )),
          ],
        ),
      ),
    );
  }
}
