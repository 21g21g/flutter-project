import 'dart:html';

import 'package:flutter/material.dart';
import './afterlogin.dart';

class FloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('New Message', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new AfterLogin()));
            }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.sort_rounded)),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.group,
                  color: Colors.black12,
                ),
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                InkWell(
                    onTap: () {},
                    child: Text('New Group',
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.security_outlined,
                  color: Colors.black12,
                ),
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                InkWell(
                    onTap: () {},
                    child: Text('New Securety chat',
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            Row(
              children: [
                Image.network(
                  'https://play-lh.googleusercontent.com/216j_yg13ixomkixXin18MBxzcJbJma4v4QXJaIfGYqJ4U6S1m1KOx8rUnVl4loZpA=w480-h960-rw',
                  width: 26,
                  height: 26,
                ),
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'New  Chanel',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
