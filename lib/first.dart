import 'package:flutter/material.dart';
import 'package:my_app/forget.dart';
import 'package:my_app/signup.dart';

class LogIn extends StatefulWidget {

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formfield = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool passToggle = true;

 // bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogIn Page"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/welcome.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 50),
                TextFormField(
                    keyboardType:TextInputType.emailAddress,
                    controller: _emailController,
                  decoration:InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),

                    ),
                  validator: (value){
                    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                      if(value.isEmpty){
                        return "Enter Email";
                      }
                      if(!emailValid){
                        return "Enter a valid Email";
                      }
                  },
                  ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType:TextInputType.emailAddress,
                  controller: _passController,
                  obscureText: passToggle,
                  decoration:InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: (){

                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                    )
                  ),
                    validator: (value){
                    if(value!.isEmpty){
                      return "Enter Password";
                    }
                    else if (_passController.text.length < 6){
                      return "The password should be at least 7";
                    }
                    }
                ),
                SizedBox(height: 60),
                InkWell(
                  onTap:(){
                    if(_formfield.currentState!.validate()){
                      print("Success");
                      _emailController.clear();
                      _passController.clear();
                    }
                  },
                  child:
                    Container(
                      //elevation: 5.0,
                      color: Colors.blueGrey,
                      padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                      child: const Text(
                        'LogIn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ),

                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const Forget();
                          }
                          )
                      );

                    },
                        child:  Text(
                            "Forget Password",
                            style:TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )
                        )

                    )
                  ],

                ),

                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const SignUp();
                          }
                          )
                      );

                    },
                        child:  Text(
                          "Sign Up",
                              style:TextStyle(
                            fontSize: 18,
                                fontWeight: FontWeight.bold,
                        )
                        )

                    )
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



