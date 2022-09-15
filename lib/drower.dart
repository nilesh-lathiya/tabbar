import 'package:flutter/material.dart';

class drower extends StatefulWidget {
  const drower({Key? key}) : super(key: key);

  @override
  State<drower> createState() => _drowerState();
}

class _drowerState extends State<drower> {
 int cnt = 0 ;
 List<Widget> l = [frist(),second(),therd()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(currentIndex: cnt,onTap: (value) {
        setState(() {
          cnt=value;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_call),label: "frist"),
        BottomNavigationBarItem(icon: Icon(Icons.message_rounded),label: "second"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label:"therd" ),
      ],),
      drawer: Drawer(
        child: ListView(
          children: [UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
              currentAccountPictureSize: Size(80,80),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
              CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
              CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80"),),
            ],

            accountName:Text("Drawerexample"), accountEmail:Text("nil@gmail.com")),
            ListTile(
              leading:Icon(Icons.account_circle_outlined),
              title: Text("frist"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  cnt=0;
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.accessibility),
              title: Text("Second"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  cnt=1;
                });
              },
            ),
            ListTile(
              leading:Icon(Icons.add_call),
              title: Text("Thersd"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  cnt=2;
                });
              },
            )
          ],
        ),
      ),
      body: l[cnt],
    );
  }
}
class frist extends StatefulWidget {
  const frist({Key? key}) : super(key: key);

  @override
  State<frist> createState() => _fristState();
}

class _fristState extends State<frist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
class therd extends StatefulWidget {
  const therd({Key? key}) : super(key: key);

  @override
  State<therd> createState() => _therdState();
}

class _therdState extends State<therd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

