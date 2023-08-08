import 'package:flutter/material.dart';
import 'package:latihan_satu/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget myText(String label, bool isObsecure){
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
      ),
      body: Center(
        child: Column(
          children: [
            myText("username" , false),
            myText("password" , true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }, child: Text('Login')),
                ElevatedButton(onPressed: () {}, child: Text('Register',
                  style: TextStyle(color: Colors.black),),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
