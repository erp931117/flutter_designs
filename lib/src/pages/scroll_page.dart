import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_page1(), _page2()],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: [_backgroundColor(), _backgroundImage(), _createContent()],
    );
  }

  Widget _page2() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shape: const StadiumBorder()),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Text('Welcome', style: TextStyle(fontSize: 15.0)),
            )),
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createContent() {
    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          Text(
            '11°',
            style: styleText,
          ),
          Text(
            'Miercoles',
            style: styleText,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
