 import 'package:flutter/material.dart';
import 'home.dart';
import 'signup.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                // FlatButton(
                //   onPressed: (){
                //     //forgot password screen
                //   },
                //   textColor: Colors.blue,
                //   child: Text('Forgot Password'),
                // ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login', style:
                        TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    height: 70,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                Center(child: BottomButton()),
              ],
            ))
    );
  }
}

 /// This is the stateless widget that the main application instantiates.
 class BottomButton extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Align(
       alignment: Alignment.bottomCenter,
       child: RaisedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => Home()),
           );
         },
         child: const Text('Skip', style: TextStyle(fontSize: 18)),
         color: Colors.blue,
         textColor: Colors.white,
         elevation: 2,
       ),
     );
   }
 }