import 'package:flutter/material.dart';
import 'package:omar0522005/Provider/signup_provider.dart';
import 'package:omar0522005/Screens/login_screen.dart';
import 'package:provider/provider.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userName = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    var phone = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold),)),
      leading: Icon(Icons.menu),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.settings),
        )
      ],),
      body: Consumer<SignUpProvider>(builder: (context, value, child)
      {
        return  Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(

              children: [
                SizedBox(height: 150),
                TextFormField(
                  controller: userName,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20)),
                      hintText: "Username",
                    suffixIcon: Icon(Icons.person_2)
                  ),
                ),
                SizedBox(height: 20,),
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
                SizedBox(height: 20,),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                      hintText: "Phone",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20)),
                    suffixIcon: Icon(Icons.phone)
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: () async{
                    bool signup = await Provider.of<SignUpProvider>(context,listen: false).signup(userName.text, email.text, password.text,phone.text);
                    if(signup)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    }
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Error")));
                  },
                  child: Text("SignUp"),
                ),
              ],
            ),
          ),
        );
      },),
    );
  }
}
