import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class LogInPage extends StatelessWidget {
  const LogInPage({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.black
                )
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.black),
              hintText: 'Email',
              fillColor: Colors.white,
            ),
          ),
        )
      ),
    );
  }

}