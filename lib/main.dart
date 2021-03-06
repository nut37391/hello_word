import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      drawer: Drawer(
        child: Text("Hello Drawer"),
      ),
      appBar: AppBar(
        title: Text("My first project"),
      ),
      body: Center(
        child: Text("Hello world"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          label: "favorite"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.phone),
          label: "phone"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.voicemail),
          label: "voicemail"
          ),
        ],
      ),
    ),
  ));
}
