import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  ExampleScreen({Key key}) : super(key: key);

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Example"),
          ),
          body: Container(
            height: 250,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("av"),
                      PopupMenuButton(
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              child: Text("Wifi"),
                            ),
                            PopupMenuItem(
                              child: Text("Bluetooth"),
                            )
                          ];
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 200,
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 150,
                              height: 150,
                              color: Colors.redAccent,
                              child: Image.asset('assets/images/cat.jpg')),
                          Container(
                              width: 150,
                              height: 150,
                              color: Colors.redAccent,
                              child: Image.asset('assets/images/cat.jpg')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 150,
                              height: 150,
                              color: Colors.redAccent,
                              child: Image.asset('assets/images/cat.jpg')),
                          Container(
                              width: 150,
                              height: 150,
                              color: Colors.redAccent,
                              child: Image.asset('assets/images/cat.jpg')),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
