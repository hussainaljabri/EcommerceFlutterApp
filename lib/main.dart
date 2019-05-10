//flutter mandatory
import 'package:flutter/material.dart';

// external package imports
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

// my own imports
import 'package:flutter_app/components/carouselHandler.dart';
import 'package:flutter_app/components/horizontal_listview.dart';


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
        // make appBar plain. no shoadow.
        elevation: 0.2,
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
                leading: Icon(Icons.home, color: Colors.pink,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'), // need to have title.
                leading: Icon(Icons.person, color: Colors.pink,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'), // need to have title.
                leading: Icon(Icons.shopping_basket, color: Colors.pink,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Catagories'), // need to have title.
                leading: Icon(Icons.dashboard, color: Colors.pink,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'), // need to have title.
                leading: Icon(Icons.favorite, color: Colors.pink,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'), // need to have title.
                leading: Icon(Icons.settings, color: Colors.pink,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'), // need to have title.
                leading: Icon(Icons.help, color: Colors.pink,),
              ),
            ),

          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          MainCarousel(),
          // padding widget
          Padding(padding: const EdgeInsets.all(15.0),
          child: new Text('Categories'),),

          //horizontal list view
          HorizontalList(),

        ],
      ),


    );
  }
}
