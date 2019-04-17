import 'package:flutter/material.dart';

class MyTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
            appBar: AppBar(
              title: Text("TabBar"),
              bottom: TabBar(
                  isScrollable: true,
                  tabs: choices.map((Choice choice) {
                    return Tab(
                      text: choice.title,
                      icon: Icon(choice.icon),
                    );
                  }).toList()),
            ),
            body: TabBarView(
                children: choices.map((Choice choice) {
              return ChoiceCard(
                choice: choice,
              );
            }).toList())));
  }
}

List<Choice> choices = <Choice>[
  Choice(title: 'CAR', icon: Icons.directions_car),
  Choice(title: 'BIKE', icon: Icons.directions_bike),
  Choice(title: 'BOAT', icon: Icons.directions_boat),
  Choice(title: 'BUS', icon: Icons.directions_bus),
  Choice(title: 'RAILWAY', icon: Icons.directions_railway),
  Choice(title: 'WALK', icon: Icons.directions_walk),
  Choice(title: 'TRANSIT', icon: Icons.directions_transit),
];

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  ChoiceCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 128,
              color: textStyle.color,
            ),
            Text(
              choice.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}

class Choice {
  Choice({this.title, this.icon});

  String title;
  IconData icon;
}
