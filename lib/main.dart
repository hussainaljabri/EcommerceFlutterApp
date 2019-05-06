import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // to make banner "debug" disappear
      debugShowCheckedModeBanner: false,
      // this widget will be the main screen
      home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// ------------------------ AppBar ----------------------------------------
      appBar: new AppBar(
        backgroundColor: Colors.pink,
        title: Text("Hussain App"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
// ------------------------ Drawer ----------------------------------------
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//----------------------Start Header Part!---------------------------------
            new UserAccountsDrawerHeader(
                accountName: Text('Hussain Aljabri'),
                accountEmail: Text('hussain.j.dev@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.pink,
                ),
            ),
//------------------------End Header Part!---------------------------
//------------------------ Start Body -------------------------------

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('HomePage'), // need to have title.
                leading: Icon(Icons.home),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
