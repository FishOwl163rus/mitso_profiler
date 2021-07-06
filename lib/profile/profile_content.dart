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
    return SingleChildScrollView(child:  Column(children: [
      HeaderProfile(size: size),
      Text("Романов Максим Дмитриевич",
          style: TextStyle(fontFamily: "Futurica", fontSize: 25),
          textAlign: TextAlign.center),
      Text("Студент",
          style: TextStyle(
              fontFamily: "Futurica", fontSize: 18, color: Colors.black45)),
      Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        alignment: Alignment.center,
        child:
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.all(10),
            color: Colors.white,
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.info, color: defaultColor, size: 45),
                  title: Text(
                    "Общая информация",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("Факультет: Экономический\nКурс: 3\nГруппа: 1920\nФорма обучения: Очная"),
                ),
                SizedBox(height: 15),
                const ListTile(
                  leading: Icon(Icons.monetization_on, color: defaultColor, size: 45),
                  title: Text(
                    "Финансы",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("Баланс: 0.00\nДолг: 0.00\nПеня: 0.00"),
                ),
                SizedBox(height: 15),
                const ListTile(
                  leading: Icon(Icons.person_pin, color: defaultColor, size: 45),
                  title: Text(
                    "Куратор",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text("ФИО: Фалько Лидия Петровна\nТелефон: +375447688454\nПочта: falko@mitso.by"),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
      ),
    ]));
  }
}
