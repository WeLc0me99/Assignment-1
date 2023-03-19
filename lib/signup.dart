import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp Page'),backgroundColor: Colors.blueGrey,
      ),
      body: Container(
      padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 70,
    ),
    width: MediaQuery.of(context).size.width,
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
    children: <Widget>[

      const SizedBox(height: 70),

      const Icon(
        Icons.arrow_forward,color: Colors.black,
        size: 100,
      ),

      const SizedBox(height: 70),

      TextField(

    decoration: InputDecoration(
    hintText: 'UserName',
    prefixIcon: const Icon(Icons.person),

      enabledBorder: OutlineInputBorder(

      borderRadius: BorderRadius.circular(20),

      borderSide: const BorderSide(

      color: Colors.blueGrey,

      width: 1.0,
    ),
    ),
    disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
    color: Colors.blueGrey,
    width: 1.0,
    ),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
    color: Colors.blueGrey,
    width: 1.0,
    ),
    ),
    ),
    ),

      //*****EMAIL*****
      const SizedBox(height: 70),

      TextField(

        decoration: InputDecoration(
          hintText: 'Email',
          prefixIcon: const Icon(Icons.email),

          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(20),

            borderSide: const BorderSide(

              color: Colors.blueGrey,

              width: 1.0,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueGrey,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueGrey,
              width: 1.0,
            ),
          ),
        ),
      ),

      //***CREATE PASSWORD***

      const SizedBox(height: 70),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    hintText: 'Creat Password',
    prefixIcon: const Icon(Icons.lock),

    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
    color: Colors.blueGrey,
    width: 1.0,
    ),
    ),
    disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
    color: Colors.blueGrey,
    width: 1.0,
    ),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
    color: Colors.blueGrey,
    width: 1.0,
    ),
    ),
    ),
    ),


      //***PASSWORD AGAIN***
      const SizedBox(height: 70),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirm',
          prefixIcon: const Icon(Icons.lock) ,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueGrey,
              width: 1.0,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueGrey,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueGrey,
              width: 1.0,
            ),
          ),
        ),
      ),


      const SizedBox(height: 30),


        MaterialButton(
           elevation: 5.0,
            color: Colors.blueGrey,
            padding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
    ),
                onPressed: () {},
            child: const Text(
              'Sign Up',
               style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
    ),
    )
        ),
    ],
      ),
    ),
    ),
    );
  }
  }

