import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Person_1 ',
      'Person_2',
      'Person_3',
      'Person_4',
      'Person_5',
      'Person_5'
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact List",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  backgroundColor: Colors.transparent)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/girl.jpg'),
                backgroundColor: Colors.black,
                radius: 41,
              ),
              title: Text(
                arrNames[index],
                style: TextStyle(fontSize: 21),
              ),
              subtitle: Text('Mob No'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
                height: 100, thickness: 2, color: Colors.purpleAccent);
          },
        ));
  }
}
