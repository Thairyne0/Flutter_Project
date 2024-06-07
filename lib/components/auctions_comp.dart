import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/class/classeAsta.dart';
import 'package:flutter_project/pages/auctionPage.dart';


class MyAuction extends StatelessWidget{
  const MyAuction({super.key});



  @override
  Widget build(BuildContext context) {
    var asta = Asta('PlayStation 5', 'Playstation 5 in buone condizioni ancora funzionante, tutto il resto mi serve per fare spessore perché devo provare cosa succede.', 'lib/images/ps5image.jpeg', 'Tommaso Cesaro', '00:23:59', '299');
    return Padding(padding: const EdgeInsets.all(8),
      child: Container(
          width: 385,
          height: 200,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            border: Border.all(color: const Color(0xFF1E1E1E)),
            borderRadius: BorderRadius.circular(16),
            // color: Colors.grey[200],
          ),
          child: Wrap(
            children: <Widget>[

              Container(
                height: 170,
                width: 170,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(
                  asta.percorsoImmagine,
                  height: 170,
                  width: 170,
                ),
              ),


              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(asta.titolo,style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text( asta.offertaAttuale,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),

                  ),

                  SizedBox(
                    width: 150,
                    height: 40,
                    child: Text( asta.tempoRimanente,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),

                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      fixedSize: MaterialStateProperty.all<Size>(const Size(127,30)),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const autcionPage(),
                        ),
                      );
                    },
                    child: const Text('Visualizza',style: TextStyle(color: Colors.black, fontSize: 17)),
                  ),

                ],

              )

            ],
          )
      ),
    );

  }
}