import 'package:atomictest/DropDown.dart';
import 'package:flutter/material.dart';
import 'package:atomictest/TextAnimate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var firstMessage =
      "ceci est un message long a modifier pendant les changements";
  var secondMessage = "ceci est un message long a modifier dans la partie";
  bool pendulumType = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2a3a),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(left: 15, top: 50, right: 20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xff1d2a3a),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              child: Image.network(
                                  "https://findicons.com/files/icons/61/dragon_soft/512/user.png")),
                          Positioned(
                              left: 200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FRONT-END",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "DEVELOPER",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "SAKONE OUMAR",
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 16,
                                          fontFamily: "GloriaHallelujah"),
                                    ),
                                  ],
                                ),
                              )),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                color: Color(0xFF123869),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "ATOMICDEX TEST",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 25),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Animation Type : ",
                                style: TextStyle(color: Colors.white54),
                              ),
                              DropDownButtonList()
                            ],
                          )
                        ],
                      ),
                    ))),
            SizedBox(height: 15.0),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'TEXT SCROLL IN CARD WIDGET',
                    style: TextStyle(
                      color: Colors.white70,
                    )),
                TextSpan(
                    text: ' PENDULUM',
                    style: TextStyle(
                      color: Colors.orange,
                    )),
              ]),
            ),
            Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                color: Color(0xff2f4158),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: animateText(firstMessage, pendulumType),
                )),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'TEXT SCROLL IN CARD WIDGET',
                    style: TextStyle(
                      color: Colors.white70,
                    )),
                TextSpan(
                    text: ' CIRCLE',
                    style: TextStyle(
                      color: Colors.orange,
                    )),
              ]),
            ),
            Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                color: Color(0xff2f4158),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: animateText(secondMessage, !pendulumType),
                )),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'TEXT SCROLL IN TABLE WIDGET',
                    style: TextStyle(
                      color: Colors.white70,
                    )),
                TextSpan(
                    text: ' PENDULUM',
                    style: TextStyle(
                      color: Colors.orange,
                    )),
              ]),
            ),
            Container(
                color: Color(0xff2f4158),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                        child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(3),
                      },
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[
                            Text(
                              'Description',
                              style: TextStyle(color: Colors.white54),
                            ),
                            animateText(firstMessage, pendulumType),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Text('Information',
                                style: TextStyle(color: Colors.white54)),
                            animateText(firstMessage, pendulumType),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Text('Adresse',
                                style: TextStyle(color: Colors.white54)),
                            animateText(firstMessage, pendulumType),
                          ],
                        ),
                      ],
                    )))),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'TEXT SCROLL IN ROW WIDGET',
                    style: TextStyle(
                      color: Colors.white70,
                    )),
                TextSpan(
                    text: ' PEND & CIR',
                    style: TextStyle(
                      color: Colors.orange,
                    )),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                color: Color(0xff2f4158),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              width: 200,
                              child: animateText(firstMessage, pendulumType),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              width: 200,
                              child: animateText(firstMessage, !pendulumType),
                            ),
                          )
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
