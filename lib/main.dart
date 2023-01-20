import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';

import './login.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.topRight, child: Icon(Icons.sunny)),
        ),
        Center(
          child: Image.network(
            'https://cdn.pixabay.com/photo/2020/10/17/13/21/telegram-5662082_1280.png',
            height: 190,
            width: 190,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
            child: Text(
          'Telegram',
          style: TextStyle(fontSize: 30),
        )),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'The worlds first messaging app.',
          style: TextStyle(fontSize: 15, color: Colors.black26),
        ),
        const Text(
          'it is free and secure.',
          style: TextStyle(fontSize: 15, color: Colors.black26),
        ),
        const SizedBox(
          height: 170,
        ),
        Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
              ),
              child: const Text(
                'Start Messaging',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new LoginPage()));
                // Navigator.of(context).pushNamed(LoginPage.routeName);
              },
            ),
          ),
        ),
      ]),
    );
  }
}
