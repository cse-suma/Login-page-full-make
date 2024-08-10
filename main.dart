//Login page full


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 35,
                color: Colors.teal
                , fontWeight: FontWeight.bold,
              ),


            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),

                          ),
                          onChanged: (String value){

                          },
                          validator:(value){
                            return value!.isEmpty?'Please enter password:' :null;
                          },


                        ),
                      ),
                      SizedBox(height: 30,),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'password',
                            hintText: 'Enter password',
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(),

                          ),
                          onChanged: (String value){

                          },
                          validator:(value){
                            return value!.isEmpty?'Please enter password:' :null;
                          },






                        ),
                      ),
                      SizedBox(height: 30,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:35 ),
                        child: MaterialButton(onPressed: (){},
                          minWidth: double.infinity,
                          child: Text("Login"),
                          color: Colors.teal,
                          textColor: Colors.white,

                        ),
                      ),


                    ],
                  )

              ),
            )

          ],

        ),
      ),
    );
  }
}