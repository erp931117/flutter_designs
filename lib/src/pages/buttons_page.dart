import 'dart:math';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [_titles(), _roundButtons()],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1.0),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1.0),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        fixedColor: Colors.pinkAccent,
        items: const [
          BottomNavigationBarItem(
              label: 'Calendar',
              icon: Icon(
                Icons.calendar_today,
                size: 30.0,
              )),
          BottomNavigationBarItem(
              label: 'Bubble',
              icon: Icon(
                Icons.bubble_chart,
                size: 30.0,
              )),
          BottomNavigationBarItem(
              label: 'Supervisor',
              icon: Icon(
                Icons.supervised_user_circle,
                size: 30.0,
              ))
        ]);
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final box = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75.0),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -100.0,
          child: box,
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transactions',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _roundButtons() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundButton(Colors.blue, Icons.usb_rounded, 'Item 1'),
          _createRoundButton(
              Colors.pinkAccent, Icons.account_circle_sharp, 'Item 2'),
        ]),
        TableRow(children: [
          _createRoundButton(
              Colors.purpleAccent, Icons.add_home_rounded, 'Item 3'),
          _createRoundButton(Colors.orangeAccent, Icons.car_crash, 'Item 4'),
        ]),
      ],
    );
  }

  Widget _createRoundButton(Color color, IconData icon, String text) {
    final textColor = color;
    return Container(
      height: 180.0,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromRGBO(62, 66, 107, 0.7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundColor: color,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
          const SizedBox(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
