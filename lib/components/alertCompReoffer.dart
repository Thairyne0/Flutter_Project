import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/class/classeAsta.dart';
import 'package:flutter_project/pages/auctionPage.dart';


class MyAlertReoffer extends StatelessWidget{
  const MyAlertReoffer({super.key});



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
                  Text(asta.titolo,style: TextStyle(color: Colors.white, fontSize: 20),),
                  const SizedBox(height: 5),
                  const SizedBox(
                    width: 150,
                    height: 80,
                    child: Text( 'Hanno rilanciato all\'asta a cui hai puntato, rilancia ora',
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),

                  const SizedBox(height: 10),

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
                    child: const Text('Rilancia',style: TextStyle(color: Colors.black, fontSize: 17)),
                  ),

                ],
              )

            ],
          )
      ),
    );

  }
}