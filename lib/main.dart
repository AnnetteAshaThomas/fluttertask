import 'package:flutter/material.dart';
import 'package:sampleapp/secondpage.dart';

void main() {
  runApp(
    const LoginPage()
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key});

    @override
    Widget build(BuildContext context){
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("LOGIN")),
backgroundColor: Colors.pink,
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Center(child: Text("LOGIN PAGE")),
            SizedBox(
              height: 20,
            ),
          
            TextFormField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "Email",
              prefixIcon: Icon(Icons.email),
              ),
            ),
             SizedBox(
              height: 20,
            ),
             TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
              Builder(
                builder: (context) {
                  return TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
                  }, ),
                  child: 
          Container(Text("Forgot password?"));
                },
              ),
              ],
            ),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [
                Colors.yellow.shade100,
                Colors.orangeAccent.shade400,
                Colors.red
              ])),
              child: Builder(
                builder: (context) {
                  return MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FlowerPage()),);
                        },
                      child: Text(
                        "Sign In",
                      style: TextStyle(
                        fontSize: 25,letterSpacing: 3,color: Colors.black),),),),
                
              
                
              
              SizedBox(
                height: 40,
                child: Divider(
                  height: 8,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                    print("tapped register");
                  },
                   child: Text(
                    "Register Account",
                  style: TextStyle(
                    color: Colors.black),
            ),),],
              )
          ],),),),
     );
    }
}