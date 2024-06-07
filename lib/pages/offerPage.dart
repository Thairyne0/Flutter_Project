import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_textfield.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/pages/mainPage.dart';

class offerPage extends StatelessWidget {
  offerPage({Key? key}) : super(key: key);

  final offerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF080808),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //toolbarHeight: 150,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('DietiDeals',
            style: TextStyle(color: Colors.white,
              fontSize: 30,
            ),
          ),


          centerTitle: true,
        ),


        body: SingleChildScrollView(
          child: Center(
            child: Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                    height: 250,
                    width: 250,
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

                  const SizedBox(height: 10),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('PlayStation 5',style: TextStyle(color: Colors.white, fontSize: 20),),
                      Text(' - ',style: TextStyle(color: Colors.white, fontSize: 20),),
                      Text('Asta Silenziosa',style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),

                  const SizedBox(height: 15),

                  const Text('Prezzo attuale: 299',style: TextStyle(color: Colors.white, fontSize: 25),),

                  const SizedBox(height: 10,),

                  const Text('Tempo mancante: 00:23:59',style: TextStyle(color: Colors.white, fontSize: 20),),

                  const SizedBox(height: 10,),

                  const Text('Venditore: Cesaro Tommaso',style: TextStyle(color: Colors.white, fontSize: 20),),

                  const SizedBox(height: 70,),

                  Padding(padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Importo Offerta',
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),

                  ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all<Size>(const Size(350,70)),

                      ),
                      onPressed: (){
                        Future openDialog() => showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                            title: Text('prova'),
                            content: Text('prova2'),
                          ),
                        );

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
                            children: [
                              Text('Conferma',style: TextStyle(color: Colors.black, fontSize: 30),),
                              SizedBox(width: 125),
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
                ],
              ),
            ),

          ),

        )









    );
  }


}