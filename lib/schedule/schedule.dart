import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitso_profiler/profile/profile_content.dart';
import 'package:timelines/timelines.dart';
import '../constants.dart';

/// This is the stateful widget that the main application instantiates.
class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

  @override
  State<ScheduleWidget> createState() => Schedule();
}

class Schedule extends State<ScheduleWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 2: Business',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_time_outlined),
        backgroundColor: defaultColor,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {});
        },
      ),
      body: Container(
        padding: MediaQuery.of(context).padding,
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: 5,
                  child: Container(
                      decoration: BoxDecoration(color: defaultColor))),
              Container(
                color: defaultColor,
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                    labelColor: defaultColor,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "01\nПН",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("02"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("03"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("04"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("05"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("06"),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: Timeline.tileBuilder(
                        theme: TimelineThemeData(
                          nodePosition: 0.05,
                        ),
                        builder: TimelineTileBuilder.fromStyle(
                          contentsAlign: ContentsAlign.basic,
                          contentsBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text('Сова лекционова $index'),
                          ),
                          itemCount: 5,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(""),
                    ),
                    Container(
                      child: Text(""),
                    ),
                    Container(
                      child: Text(""),
                    ),
                    Container(
                      child: Text(""),
                    ),
                    Container(
                      child: Text(""),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
