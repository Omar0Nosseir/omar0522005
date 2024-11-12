import 'package:flutter/material.dart';
import 'package:omar0522005/Provider/login_provider.dart';
import 'package:omar0522005/Provider/signup_provider.dart';
import 'package:omar0522005/Screens/login_screen.dart';
import 'package:omar0522005/Screens/product_screen.dart';

import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var password = TextEditingController();
    var email = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),)),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:20),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Consumer<SignUpProvider>(builder: (context, value, child)
      {
        return  Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CircleAvatar(backgroundColor: Colors.black,minRadius: 50,maxRadius: 50,),
                ),
                SizedBox(height: 150,),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20)),
                    suffixIcon: Icon(Icons.mail)
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20)),
                    suffixIcon: Icon(Icons.lock)
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: () async{
                    bool login = await Provider.of<LoginProvider>(context,listen: false).login(email.text, password.text);
                    if(login)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Error")));
                  },
                  child: Text("Login"),
                ),

              ],
            ),
          ),
        );
      },),
    );
  }
}
