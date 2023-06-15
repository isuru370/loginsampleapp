import 'package:exsample_app/componets/my_textfield.dart';
import 'package:exsample_app/register.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
 const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: SafeArea(
          child: Column(
            children:  [
              // logo
              Icon(Icons.lock,size: 100.0,),
              SizedBox(height: 30.0,),
              // Wellcome Text
              Text("Wllcome back you've been miss",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),),
              SizedBox(height: 120.0,),

              //user Name
              MyTextField(
                  controller: null,
                  hintText: "User Name",
                  passText: false),
              SizedBox(height: 20.0,),
              //password
              MyTextField(
                  controller: null,
                  hintText: "Password",
                  passText: true),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Forgot Password"),),
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Sign In",style: TextStyle(fontSize: 16.0),),),
             SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                    Text("Or continue with"),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      "lib/images/google.png",
                    height: 40.0,),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      "lib/images/apple.png",
                      height: 40.0,),
                  ),
                ],
              ),
              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member",style: TextStyle(fontSize: 15.0),),
                  SizedBox(width: 5.0,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()),);
                  }, child: Text("Register Now"),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
