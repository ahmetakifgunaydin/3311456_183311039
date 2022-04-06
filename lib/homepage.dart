import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          automaticallyImplyLeading: false,
          title: Center(child: Text("Sera Anlık Durum")),
        ),
        body: Scaffold(
          body: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.amber[600],
                          width: 200.0,
                          height: 80.0,
                          child: Center(
                            child: Text("Sıcaklık"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.amber[600],
                          width: 200.0,
                          height: 80.0,
                          child: Center(
                            child: Text("Nem"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.amber[600],
                          width: 200.0,
                          height: 80.0,
                          child: Center(
                            child: Text("CO^2"),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.amber[600],
                          width: 200.0,
                          height: 80.0,
                          child: Center(
                            child: Text("Sıcaklık"),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
