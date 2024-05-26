import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final _key = GlobalKey<FormState>();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in',style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold,fontSize: 32.0)),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 30.0
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0)
                      ),
                      hintText: "Username"
                    ),  
                    autocorrect: true,
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'No information is Enter';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0)
                      ),
                      hintText: "Password"
                    ),  
                    autocorrect: true,
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'No information is Enter';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0
                  ),
                ),
                const Text("Forgot Password?", style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_key.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Logged In")
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[600],
                    fixedSize: Size(300.0, 40.0),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueAccent, width: 2.0),
                    )
                  ),
                  child: const Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Don\'t have an account?",
                        style: TextStyle(color: Colors.black)
                      ),
                      TextSpan(
                        text: " Sign up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ]
                  ),
                )
              ],
              
            ),
          ],
        ),
      )
    );
  }
}
