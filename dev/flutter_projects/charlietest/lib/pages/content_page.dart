

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget{
  @override
  _StateContentPage createState() => _StateContentPage();
  }

  class _StateContentPage extends State<ContentPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      height: 300,
                      width: 120,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      height: 300,
                      width: 120,
                      color: Colors.yellow,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      height: 300,
                      width: 120,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 6),
              color: Colors.green,
            ),
             Padding(padding: EdgeInsets.only(top: 10)),
             Container(
               color: Colors.yellow,
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                   child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              height: 80,
                              width: MediaQuery.of(context).size.width / 3 - 40,
                              color: Colors.black,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              height: 80,
                              width: MediaQuery.of(context).size.width / 3 - 40,
                              color: Colors.black,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              height: 80,
                              width: MediaQuery.of(context).size.width / 3 - 40,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              height: 80,
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              color: Colors.black,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              height: 80,
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                   ),
                 )
             )
            ]
          )
        ),
      )
    );
  }

  }

