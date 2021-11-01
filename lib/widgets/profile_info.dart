import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/rating_star.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Cassian',
            style: TextStyle(color: Color(0xffEC805B), fontSize: 35,fontFamily: 'Irish',fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.black26,
                size: 22,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'California,United State',
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) => RatingStar(),),
          ),
          SizedBox(
            height: 10,
          ),
          // button widget (below)
          Container(
            height: 50,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    1
                  ],
                  colors: [
                    Color(0xffF49A7B),
                    Color(0xffEC805B),
                  ]),
            ),
            child: Center(
                child: Text(
              'Follow',
              style: TextStyle(fontSize: 23, color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
