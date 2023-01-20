import 'dart:html';

import 'package:flutter/material.dart';
import 'package:haha_hh/countries.dart';
import './login.dart';
import './showsearch.dart';

class SearchBar extends StatelessWidget {
  // List<int> num = [
  List<countries> items = [
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Flag_of_Afghanistan_%282004%E2%80%932021%29.svg/1280px-Flag_of_Afghanistan_%282004%E2%80%932021%29.svg.png',
        text: 'Afganistan',
        nom: '+345'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Albania.svg/980px-Flag_of_Albania.svg.png',
        text: 'Albania',
        nom: '+876'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Algeria.svg/1200px-Flag_of_Algeria.svg.png',
        text: 'Algeria',
        nom: '+98'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1920px-Flag_of_the_United_States.svg.png',
        text: 'America',
        nom: '+908'),
    countries(
        flag:
            'https://www.shutterstock.com/image-vector/flag-kenya-republic-bright-colorful-260nw-1392927569.jpg',
        text: 'Kenya',
        nom: '097'),
    countries(
        flag: 'https://m.media-amazon.com/images/I/61KI2KrOn5L._AC_SX679_.jpg',
        text: 'nigeria',
        nom: '0987'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Flag_of_Eritrea.svg/2560px-Flag_of_Eritrea.svg.png',
        text: 'eritrea',
        nom: '98'),
    countries(
        flag: 'https://m.media-amazon.com/images/I/61KI2KrOn5L._AC_SX679_.jpg',
        text: 'nigeria',
        nom: '0987'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Flag_of_Eritrea.svg/2560px-Flag_of_Eritrea.svg.png',
        text: 'eritrea',
        nom: '98'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Flag_of_Eritrea.svg/2560px-Flag_of_Eritrea.svg.png',
        text: 'eritrea',
        nom: '98'),
    countries(
        flag:
            'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1920px-Flag_of_the_United_States.svg.png',
        text: 'America',
        nom: '+908'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Choose a country',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new LoginPage()));
          },
        ),
        actions: [
          IconButton(
            onPressed: (() {
              showSearch(context: context, delegate: CostomSearchDelegate());
            }),
            icon: Icon(Icons.search),
            color: Colors.black,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index) {
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  items[index].flag,
                  width: 150,
                ),
              ),
            ),
            title: Text(items[index].text),
            trailing: Text(items[index].nom),
          );
        },
      ),
    );
  }
}
