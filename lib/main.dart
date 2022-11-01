import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        //child: Padding(
        //padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              height: 350.0,
              child: Image.asset(
                'images/login_page.png',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Email",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    //borderSide: BorderSide(color: Colors.pink),
                    ),
                hintText: "Password",
                border: UnderlineInputBorder(),
              ),
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "\nForget your password?",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: 50.0,
              width: 800.0,
              margin: EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      //),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/splashscreen.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: LoginPage()));
  runApp(MaterialApp(home: MyApp()));
}
