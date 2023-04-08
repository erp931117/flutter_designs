import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  BasicPage({super.key});

  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return const Image(
        image: NetworkImage(
            'https://cdn.naturettl.com/wp-content/uploads/2017/02/22014001/top-tips-improve-landscapes-ross-hoddinott-11-900x600.jpg'));
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lago con puente',
                    style: styleTitle,
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago en Alemania',
                    style: styleSubtitle,
                  )
                ],
              ),
            ),
            const Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            const Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _createText() {
    final sentences = faker.lorem.sentences(5);
    String finalText = '';
    for (var element in sentences) {
      finalText = '$finalText$element. ';
    }

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          finalText,
          textAlign: TextAlign.justify,
        ));
  }
}
