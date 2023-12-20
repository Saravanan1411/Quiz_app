import 'package:flutter/material.dart';
import 'package:quiz/Styles/Color.dart';

import '../Styles/TextStyle.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // TextEditingController _controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradient_1, gradient_2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight

          )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //title
                Text("Login",style: loginHead,),


                //mobile number
                TextFormField(
                    // controller: _controller,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                        prefix: Text('+91 '),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                  )
                ),


                //button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (route) => false);
                        },
                        child: Text("LOGIN")
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
