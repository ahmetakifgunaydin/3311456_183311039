import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Hava Durumu")),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Bursa",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "52\u00b0",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Yağmurlu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                  title: Text("Sıcaklık"),
                  trailing: Text("52\00B0"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.cloud),
                  title: Text("Bulut"),
                  trailing: Text("Bulut"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.sun),
                  title: Text("Güneş"),
                  trailing: Text("Güneş"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.wind),
                  title: Text("Rüzgar hızı"),
                  trailing: Text("Rüzgar hızı"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.tree),
                  title: Text("Polen"),
                  trailing: Text("Polen miktarı"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.cloudSun),
                  title: Text("Güneşlenme süresi"),
                  trailing: Text("Güneşlenme süresi"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.water),
                  title: Text("Nem oranı"),
                  trailing: Text("Nem oranı"),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
