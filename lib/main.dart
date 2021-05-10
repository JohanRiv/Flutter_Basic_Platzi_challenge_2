import 'package:flutter/material.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Navigate to challenge Page'),
          ),
          body: Center(
            child: TextButton(
              child: Text('Nav to challenge'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
          )),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reto de JohanRiv - Share'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
            Container(
              child: Text('Naughty'),
            )
          ],
        ),
      ),
    );
  }
}
