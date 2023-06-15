import 'package:exsample_app/componets/my_textfield.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:  [
                // logo
                const Icon(Icons.lock,size: 100.0,),
                const SizedBox(height: 30.0,),
                // Wellcome Text
                const Text("Wllcome back you've been miss",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),),
                const SizedBox(height: 120.0,),

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
                const SizedBox(height: 20.0,),
                //password
                MyTextField(
                    controller: null,
                    hintText: "Conform Password",
                    passText: true),
                const SizedBox(height: 20.0,),
                ElevatedButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(fontSize: 16.0),),),
                const SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: const [
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
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey,
                      ),
                      child: Image.asset(
                        "lib/images/google.png",
                        height: 40.0,),
                    ),
                    const SizedBox(width: 20.0,),
                    Container(
                      padding: const EdgeInsets.all(5.0),
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
                  children:  [
                    Text("Sign in member",style: TextStyle(fontSize: 15.0),),
                    SizedBox(width: 5.0,),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("Sign in"),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
