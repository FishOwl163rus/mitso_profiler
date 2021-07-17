import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: size.height * 0.315,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              bottom: defaultPadding,
            ),
            height: size.height * 0.3 - 50,
            decoration: BoxDecoration(
              color: defaultColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  padding: EdgeInsets.all(9),
                  height: 0,
                  minWidth: 0,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 27,
                  ),
                  onPressed: () {
                    //Do something
                  },
                ),
                Text(
                  'Профиль студента',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                MaterialButton(
                  padding: EdgeInsets.all(9),
                  height: 0,
                  minWidth: 0,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 27,
                  ),
                  onPressed: () {
                    //Do something
                  },
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: defaultColor.withOpacity(0.33),
                    ),
                  ],
                ),
                child:
                    ClipOval(child: Image.asset("assets/images/student.jpg")),
              ))
        ],
      ),
    );
  }
}
