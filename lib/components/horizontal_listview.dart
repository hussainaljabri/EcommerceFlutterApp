import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            img_location: 'images/cats/tshirt.png',
            img_caption: 'T-Shirt',
          ),
          Category(
          img_location: 'images/cats/dress.png',
          img_caption: 'Dress',
          ),
          Category(
            img_location: 'images/cats/jeans.png',
            img_caption: 'Jeans',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String img_location, img_caption;

  Category({
    this.img_location,
    this.img_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              img_location,
              width: 100.0,
              height: 80.0,
              alignment: Alignment.topCenter,
            ),
            subtitle: Text(img_caption, textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}
