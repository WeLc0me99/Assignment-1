import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success ({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          title: const Text('LogIn Successfully'),
          backgroundColor: Colors.blueGrey,
        )
    );
  }
}
