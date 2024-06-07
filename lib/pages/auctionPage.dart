import 'package:flutter/material.dart';
import 'package:flutter_project/pages/offerPage.dart';
import 'package:flutter_project/pages/vendorPage.dart';

class autcionPage extends StatelessWidget {
  const autcionPage({Key? key}) : super(key: key);

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

              const SizedBox(
                width: 375,
                height: 150,
                child: Text('Playstation 5 versione Gamever per niente rubata al comicon e tutto legale. Lo giuro su dio e su tutto me stesso, SBOMBI.',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              const SizedBox(height: 10,),

              const Text('Prezzo attuale: 299',style: TextStyle(color: Colors.white, fontSize: 25),),

              const SizedBox(height: 10,),

              const Text('Tempo mancante: 00:23:59',style: TextStyle(color: Colors.white, fontSize: 20),),

              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Venditore: ',style: TextStyle(color: Colors.white, fontSize: 20),),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => vendorPage(),
                        ),
                      );
                    },
                    child: const Padding(padding: EdgeInsets.all(0),
                      child: Text('Cesaro Tommaso', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50,),

              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          /*side: BorderSide(color: Colors.red)*/
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    fixedSize: MaterialStateProperty.all<Size>(const Size(350,70)),

                  ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => offerPage(),
                    ),
                  );
                },
                child: const Wrap(
                  children: [
                    Row(
                      children: [
                        Text('Nuova Offerta',style: TextStyle(color: Colors.black, fontSize: 30),),
                        SizedBox(width: 70),
                        Expanded(child: Icon(
                          Icons.arrow_circle_right_rounded,
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

      )









    );
  }


}