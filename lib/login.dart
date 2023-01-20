import 'package:flutter/material.dart';
import './searchbar.dart';
import './afterlogin.dart';

class LoginPage extends StatelessWidget {
  //static final routeName = "loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 5),
            child: Column(children: [
              Text(
                'Your phone number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Please confirm your country code'),
              Text('and enter your phone number'),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Country'),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_right_sharp),
                        onPressed: (() {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new SearchBar()));
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  suffix: CircleAvatar(
                      child: IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new AfterLogin()));
                          })),
                  border: OutlineInputBorder(),
                  labelText: 'Phone number',
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
