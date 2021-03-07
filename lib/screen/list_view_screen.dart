import 'package:flutter/material.dart';

class ListViewscreen extends StatefulWidget {
  ListViewscreen({Key key}) : super(key: key);

  @override
  _ListViewscreenState createState() => _ListViewscreenState();
}

class _ListViewscreenState extends State<ListViewscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Scaffold(
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('NUTZA007'),
                accountEmail: Text('Pattarapol233@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(
                    size: 42.0,
                  ),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    child: Text("N"),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.add),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                  )
                ],
              ),
              ListTile(title: Text('Item 1'), onTap: () {}),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
              Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    title: Text('Item 3'),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "ListView Screen"),
        ),
        body: ListView(children: [
          ListTile(
            title: Text("หัวข้อ 1")),
        ],),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone"),
            BottomNavigationBarItem(
                icon: Icon(Icons.voicemail), label: "voicemail"),
          ],
        ),
      ),
    );
  }
}