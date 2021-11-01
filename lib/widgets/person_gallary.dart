import 'package:flutter/material.dart';

class PersonGallary extends StatelessWidget {
  PersonGallary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
          children: List.generate(
              imageList.length,
              (index) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                      child: Image(image: AssetImage('${imageList[index]}'),fit: BoxFit.cover,),
                    ),
              )),
        ),
      ),
    );
  }

  List<String> imageList = [
    'assets/images/post1.png',
    'assets/images/post2.png',
    'assets/images/post6.png',
    'assets/images/post5.png',
    'assets/images/post4.png',
    'assets/images/post3.png',
    'assets/images/post2.png',
  ];
}
