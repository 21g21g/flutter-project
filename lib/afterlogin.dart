import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './allcontent.dart';
import './unreadcontent.dart';
import './pesonalcontent.dart';
import './showsearch.dart';
import './floatingaaction.dart';

class AfterLogin extends StatefulWidget {
  @override
  State<AfterLogin> createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  bool _isVisible = false;
  bool click = false;
  bool icon = true;
  void ShowWidget() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: (click == false) ? Colors.white : Colors.yellow,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                otherAccountsPictures: [
                  IconButton(
                      onPressed: (() {
                        setState(() {
                          click = !click;
                          icon = !icon;
                        });
                      }),
                      icon:
                          (icon == true) ? Icon(Icons.sunny) : Icon(Icons.add)),
                ],
                accountName: Text('gebeyehu assega'),
                accountEmail: Text('+25100108767'),
                currentAccountPicture: CircleAvatar(
                  radius: 5.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('tinsa.jpg'), fit: BoxFit.cover),
                    ),
                  ),
                ),
                onDetailsPressed: () {
                  ShowWidget();
                },
              ),
              Column(children: [
                Visibility(
                  visible: _isVisible,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Container(
                    child: Row(children: [
                      Image.network(
                        'https://www.mockofun.com/wp-content/uploads/2019/12/circle-profile-pic.jpg',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Alemu Kebede'),
                    ]),
                  ),
                ),
                Visibility(
                  visible: _isVisible,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Container(
                    child: Row(children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Add Account'),
                    ]),
                  ),
                ),
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
                      Icons.contact_phone,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('Contacts',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('Calls',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_pin_circle,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('Peple Nearby',
                            style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message_sharp,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('Sved Messages',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('Settings',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_add,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('invite freinds',
                            style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.featured_play_list,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text('telegram features',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
              ]),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Row(
                children: [
                  Text('All'),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
              Row(
                children: [
                  Text('Unread'),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: Text(
                      '76',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Personal'),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: Text(
                      '354',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: Colors.blueAccent,
          title: Text('Telegram'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CostomSearchDelegate(),
                );
              },
            ),
          ],
        ),
        body: TabBarView(children: [
          AllContent(),
          UnreadContent(),
          PersonalContent(),
        ]),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FloatingAction()));
          },
        ),
      ),
    );
  }
}
