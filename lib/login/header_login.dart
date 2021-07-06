import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class HeaderWithLogo extends StatelessWidget {
  const HeaderWithLogo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height / 2.1,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff2375ff),
                  defaultColor,
                ])),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset("assets/images/owl.svg",
                height: 90, width: 90, color: Colors.white),
            Positioned(
                top: size.height / 3.2,
                child: Text('МИТСО',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontFamily: "SourceSansPro",
                        fontSize: 24,
                        fontWeight: FontWeight.w700))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 20, top: 220),
                    child: Text("Авторизация",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SourceSansPro",
                            fontSize: 24,
                            fontWeight: FontWeight.w400)))
              ],
            )
          ],
        ));
  }
}
