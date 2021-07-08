import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? result = '';
  double? value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[Text(
              '$result',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
            ),
              Divider(
                height: 60,
                color: Colors.grey,
              ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '7';
                          });
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                                '7',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                            ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '8';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '8',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '9';
                          }
                          );
                        },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ) ,
                            child: Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                )
                            ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 150,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '/';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                          ) ,
                          child: Text(
                              '/',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '4';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '4',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '5';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '5',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '6';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '6',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '*';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                          ) ,
                          child: Text(
                              '*',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '1';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '2';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '3';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '+';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                          ) ,
                          child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '.';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '0';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '0',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '00';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                          ) ,
                          child: Text(
                              '00',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            result = result! + '-';
                          }
                          );
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                          ) ,
                          child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              )
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 100,
                      child: ElevatedButton(onPressed: () {
                        setState(() {
                          result = '';
                        }
                        );
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                        ) ,
                        child: Text(
                            'Clear',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            )
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      child: ElevatedButton(onPressed: () {
                        setState(() {
                          Parser p = Parser();
                          Expression exp = p.parse(result!);
                          ContextModel cm = ContextModel();
                          double eval = exp.evaluate(EvaluationType.REAL, cm);
                          result = '$eval';
                        }
                        );
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                        ) ,
                        child: Text(
                            '=',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            )
                        ),
                      ),
                    ),
                  ),
                ]
              )
            ],
          ),
        ),
      );
  }
}