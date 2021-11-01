import 'package:flutter/material.dart';
class RatingStar extends StatelessWidget {
  const RatingStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 20,
        width: 20,
        child: Image(
          image: AssetImage('assets/images/star.png'),

        ),
      ),
    );
  }
}
