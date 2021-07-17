import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'header_profile.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: [
      HeaderProfile(size: size),
      Text("Романов Максим Дмитриевич",
          style: TextStyle(fontFamily: "Futurica", fontSize: 25),
          textAlign: TextAlign.center),
      Text("Студент",
          style: TextStyle(
              fontFamily: "Futurica", fontSize: 18, color: Colors.black45)),
      Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/info.png"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 3.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 5),
                    const ListTile(
                      title: Text(
                        "Общая информация",
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                          "Факультет: Экономический\nКурс: 3\nГруппа: 1920\nФорма обучения: Очная"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/payment.png"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 3.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 5),
                    const ListTile(
                      title: Text(
                        "Общая информация",
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                          "Факультет: Экономический\nКурс: 3\nГруппа: 1920\nФорма обучения: Очная"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/curator.png"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 3.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 5),
                    const ListTile(
                      title: Text(
                        "Общая информация",
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                          "Факультет: Экономический\nКурс: 3\nГруппа: 1920\nФорма обучения: Очная"),
                    ),
                  ],
                ),
              )
            ],
          )),
    ]));
  }
}
