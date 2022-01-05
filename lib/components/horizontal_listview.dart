// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_caption: 'shirt',
            image_location: 'images/cats/tshirt.png',
          ),
          Category(
            image_caption: 'dress',
            image_location: 'images/cats/dress.png',
          ),
          Category(
            image_caption: 'pants',
            image_location: 'images/cats/jeans.png',
          ),
          Category(
            image_caption: 'formal',
            image_location: 'images/cats/formal.png',
          ),
          Category(
            image_caption: 'formal',
            image_location: 'images/cats/informal.png',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({required this.image_caption, required this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
