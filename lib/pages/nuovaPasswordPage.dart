
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_project/components/my_textfield.dart';
import 'package:flutter_project/components/square_tile.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/pages/LogInPageReal.dart';
import 'package:flutter_project/pages/registerPage2of3.dart';
import 'package:flutter_project/pages/sceltaAccountPage.dart';


class nuovaPasswordPage extends StatelessWidget {
  nuovaPasswordPage({Key? key, required this.title}) : super(key: key);
  final String title;

  //text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  /*void signUserIn(){
    Navigator.push(
      context as BuildContext,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //toolbarHeight: 150,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('DietiDeals',
          style: TextStyle(color: Colors.white,
            fontSize: 30,
          ),
        ),


        centerTitle: true,
      ),
      backgroundColor: Color(0xFF080808),
      body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  //logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 50),
                  const Text('Inserisci la tua nuova password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 50),

                  MyTextField(
                    controller: usernameController,
                    hintText: 'Nuova Password',
                    obscureText: false,
                  ),

                  const SizedBox(height: 25),

                  //username textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Conferma Password',
                    obscureText: false,
                  ),

                  const SizedBox(height: 25),


                  const SizedBox(height: 25),

                  ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              /*side: BorderSide(color: Colors.red)*/
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(const Size(300,65)),

                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInPageReal(title: 'LogIn'),
                          ),
                        );
                      },
                      child: const Wrap(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Conferma',style: TextStyle(color: Colors.black, fontSize: 30),),
                              SizedBox(width: 77),
                              Expanded(child: Icon(
                                Icons.check_circle_rounded,
                                color: Colors.black,
                                size: 60,
                              ),
                              ),

                            ],

                          ),

                        ],
                      )
                  ),

                  /*MyButton(
                 onTap: signUserIn,
               ),*/

                  const SizedBox(height: 50),



                  const SizedBox(height: 40),



                ],
              )
          )


      ),
    );
  }
}