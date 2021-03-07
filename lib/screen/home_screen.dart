import 'package:flutter/material.dart';
import 'package:hello_word/screen/Form_Screen.dart';
import 'package:hello_word/screen/example2.dart';
import 'package:hello_word/screen/exsample.dart';
import 'package:hello_word/screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
          title: Text("My First Project"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  color: Colors.redAccent,
                  child: Text("dsdadsadsadsadasdasdas")),
              Container(
                  width: 150,
                  height: 150,
                  color: Colors.redAccent,
                  child: Image.asset('assets/images/cat.jpg')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> ListViewscreen(),
                    ),
                    );
                },
                child: Text("กดปุ่ม"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> FormScreen(),
                    ),
                    );
                },
                child: Text("กดปุ่ม2"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> ExampleScreen(),
                    ),
                    );
                },
                child: Text("กดปุ่ม3"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> Example2(),
                    ),
                    );
                },
                child: Text("ตย"),
              ),
            ],
          ),
        ),
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
