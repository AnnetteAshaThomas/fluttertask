import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to password reset page'),
        backgroundColor: Colors.redAccent
      ),

      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Center(child: Text("WELCOME")),
            SizedBox(
              height: 20,
            ),
          
            TextFormField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "New password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
             SizedBox(
              height: 20,
            ),
             TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "Confirm password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            ],
            ),
            ),
            );
  }
}