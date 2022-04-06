import 'package:aag1/About.dart';
import 'package:aag1/homepage.dart';
import 'package:aag1/login_page.dart';
import 'package:aag1/weather.dart';
import 'package:flutter/material.dart';

void main() => runApp(Sera());

class Sera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  final username;

  const MainPage({Key? key, @required this.username}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  int currentIndex = 0;
  final screens = [
    HomePage(),
    weather(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            Text(widget.username == null ? "Kullanıcı Yok" : widget.username),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: screens[currentIndex],
      //body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) => {
          setState(() => currentIndex = index),
          print(index),
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Sera Anlık Durum',
              backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Hava Durumu',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Hakkında',
            backgroundColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
