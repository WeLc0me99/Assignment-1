import 'package:flutter/material.dart';


class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar(
        title: const Text('Forget Password'),backgroundColor: Colors.blueGrey,
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
          Icons.rotate_right,
          size: 100,
      ),
      const SizedBox(height: 70),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'New Password',
          prefixIcon: const Icon(Icons.lock),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.grey,
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
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
      ),

      const SizedBox(height: 70),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirm',
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
    'Rest Password',
    style: TextStyle(
    color: Colors.white,
    fontSize: 23,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ],
    ),
    ),
      ),
    );
  }
}
