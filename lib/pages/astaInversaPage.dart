
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_project/components/my_textfield.dart';
import 'package:flutter_project/components/square_tile.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/pages/mainPage.dart';
import 'package:flutter_project/pages/registerPage2of3.dart';
import 'package:flutter_project/pages/sceltaAccountPage.dart';


class astaInversaPage extends StatelessWidget {
  astaInversaPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Container(
                    height: 170,
                    width: 170,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset(
                      'lib/images/ps5image.jpeg',
                      height: 170,
                      width: 170,
                    ),
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              /*side: BorderSide(color: Colors.red)*/
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(const Size(60,20)),

                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => registerPageTwo(title: 'Registrazione'),
                          ),
                        );
                      },
                      child: const Wrap(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /*Text('Crea',style: TextStyle(color: Colors.black, fontSize: 15),),*/
                              /*SizedBox(width: 10),*/
                              Expanded(child: Icon(
                                Icons.add_photo_alternate_rounded,
                                color: Colors.black,
                                size: 20,
                              ),
                              ),

                            ],

                          ),

                        ],
                      )
                  ),

                  const SizedBox(height: 10),
                  const Text('Inserisci le immagini del tuo prodotto',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 20),

                  MyTextField(
                    controller: usernameController,
                    hintText: 'Nome del prodotto',
                    obscureText: false,
                  ),

                  const SizedBox(height: 25),

                  //username textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Descrizione del prodotto',
                    obscureText: false,
                  ),

                  const SizedBox(height: 25),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Data e ora di scadenza',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Prezzo minimo',
                    obscureText: true,
                  ),

                  const SizedBox(height: 30),

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
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Wrap(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Crea',style: TextStyle(color: Colors.black, fontSize: 30),),
                              SizedBox(width: 148),
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


                ],
              )
          )


      ),
    );
  }
}