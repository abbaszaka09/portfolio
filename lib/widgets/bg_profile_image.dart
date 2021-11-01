import 'package:flutter/material.dart';
class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

        ),
        child: Image(
          image: AssetImage('assets/images/profile.png'),
          fit: BoxFit.fill,
        )
    );
  }
}
