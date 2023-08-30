import 'package:flutter/material.dart';
import 'package:latihan_satu/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String usernameText = "ini username";
  late TextEditingController ctrUsername;
  late TextEditingController ctrPassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ctrUsername = new TextEditingController();
    ctrPassword = new TextEditingController();
  }

  Widget myText(String label, bool isObsecure , TextEditingController myController){
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: myController,
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
            myText("username" , false ,  ctrUsername!),
            myText("password" , true , ctrPassword!),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  print(ctrUsername.text.toString());
                  // string to double
                  // set state hasil luas
                }, child: Text('Login')),
                ElevatedButton(onPressed: () {}, child: Text('Register',
                  style: TextStyle(color: Colors.black),),)
              ],
            ),
            Text(usernameText),
          ],
        ),
      ),
    );
  }
}
