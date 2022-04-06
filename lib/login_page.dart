import 'package:aag1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black26, Colors.blueGrey]),
      ),
      child: Scaffold(
        backgroundColor: Colors.black26,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kullanıcı Adınızı Giriniz";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    username = value!;
                  },
                ),
                SizedBox.fromSize(
                  child: Text(""),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Şifrenizi Giriniz";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                SizedBox.fromSize(
                  child: Text(""),
                ),
                _loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: deprecated_member_use
  Widget _loginButton() => ButtonTheme(
        minWidth: 100.0,
        height: 50.0,
        child: RaisedButton(
          child: Text("Giriş Yap"),
          textColor: Colors.white,
          color: Colors.green[900],
          disabledColor: Colors.lightGreen,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(
                    username: username,
                  ),
                ),
              );
            }
          },
        ),
      );
}
