
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_project/components/my_textfield.dart';
import 'package:flutter_project/components/square_tile.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/pages/recuperaPasswordPage.dart';
import 'package:flutter_project/pages/registerPage1of3.dart';
import 'package:flutter_project/pages/sceltaAccountPage.dart';


class LogInPageReal extends StatelessWidget {
  LogInPageReal({Key? key, required this.title}) : super(key: key);
  final String title;

  //text editing controllers
  final usernameController = TextEditingController();
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
     resizeToAvoidBottomInset: false,
     backgroundColor: const Color(0xFF080808),
     body: SingleChildScrollView(
       child: SafeArea(
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
                   const Text('Welcome back you\'ve been missed!',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 16,
                     ),
                   ),

                   const SizedBox(height: 50),

                   //username textfield
                   MyTextField(
                     controller: usernameController,
                     hintText: 'Username',
                     obscureText: false,
                   ),

                   const SizedBox(height: 25),

                   MyTextField(
                     controller: passwordController,
                     hintText: 'Password',
                     obscureText: true,
                   ),

                   const SizedBox(height: 10),

                   InkWell(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => recuperaPasswordPage(title: 'recupero password'),
                         ),
                       );
                     },
                     child: Text('Password dimenticata?', style: TextStyle(color: Colors.grey),),
                   ),

                   const SizedBox(height: 25),

                   ElevatedButton(
                       onPressed: () {
                         Navigator.push(
                           context as BuildContext,
                           MaterialPageRoute(
                             builder: (context) => sceltaAccountPage(),
                           ),
                         );
                       },
                       child: const Text('Accedi',
                         style: TextStyle(color: Colors.black, fontSize: 21),
                       ),
                       style: ButtonStyle(
                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(7),
                               /*side: BorderSide(color: Colors.red)*/
                             )
                         ),
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                         fixedSize: MaterialStateProperty.all<Size>(const Size(350,60)),

                       )
                   ),

                   /*MyButton(
                 onTap: signUserIn,
               ),*/

                   const SizedBox(height: 50),

                   const Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25.0),
                       child: Row(
                         children: [
                           Expanded(
                             child: Divider(
                               thickness: 0.5,
                               color: Colors.grey,
                             ),
                           ),
                           Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
                             child: Text(
                               'Oppure accedi con',
                               style: TextStyle(color: Colors.white),
                             ),
                           ),

                           Expanded(
                             child: Divider(
                               thickness: 0.5,
                               color: Colors.grey,
                             ),
                           ),
                         ],
                       )
                   ),

                   const SizedBox(height: 40),

                   //logo google
                   const Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SquareTile(imagePath: 'lib/images/logo_google.png')
                     ],
                   ),

                   const SizedBox(height: 10),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text('Non sei ancora registrato?',
                         style: TextStyle(color: Colors.grey),
                       ),
                       const SizedBox(width: 3),

                       InkWell(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => registerPageOne(title: 'registrazione'),
                             ),
                           );
                         },
                         child: const Padding(padding: EdgeInsets.all(10),
                           child: Text('Registrati ora', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                         ),
                       ),
                     ],
                   )


                 ],
               )
           )


       ),
     ),
   );
  }
}

