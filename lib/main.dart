import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final teams = [
    "Arsenal",
    "Man City",
    "Tottenham Hotspur",
    "Brighton",
    "Man Utd"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Football Updates',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Premier league Standings'),
            ),
            body: ListView.builder(
                itemCount: teams.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                          title: Text(teams[index]),
                          trailing: Text((index+1).toString())));
                })));
  }
}
