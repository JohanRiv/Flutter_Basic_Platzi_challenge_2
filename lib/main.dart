import 'package:flutter/material.dart';

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
      ),
      routes: {
        '/': (context) => FirstPage(),
        '/challenge': (context) => SecondPage()
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigate to challenge Page'),
        ),
        body: Center(
          child: TextButton(
            child: Text('Nav to challenge!'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
              print('Button clic');
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Ejecución de page');
    return Scaffold(
      appBar: AppBar(
        title: Text('Reto de JohanRiv - Share'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.network(
                  'https://previews.123rf.com/images/archon7th/archon7th1901/archon7th190100126/123356127-comic-space-with-stars-funny-astronauts-and-spaceships-seamless-pattern.jpg'),
            ),
            Container(
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black45, Colors.black45],
              )),
              child: Text('Naughty',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
