import 'package:flutter/material.dart';
import 'package:flutter_project/homepage.dart';


class sceltaAccountPage extends StatelessWidget {
  const sceltaAccountPage({Key? key}) : super(key: key);


  static const String nomeUtente = "Nome Utente";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF080808),
        //toolbarHeight: 150,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Benvenuto',
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

            children: [

              const SizedBox(height: 50),

              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.white,
              ),

              SizedBox(height: 25),

              const Text(
                nomeUtente,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              ),

              SizedBox(height: 25),

              const Text(
                'Accedere come:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),

              SizedBox(height: 50),

              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                          /*side: BorderSide(color: Colors.red)*/
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    fixedSize: MaterialStateProperty.all<Size>(const Size(350,60)),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context as BuildContext,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Text('Compratore',style: TextStyle(color: Colors.black, fontSize: 20),)
                    ],
                  )

              ),

              const SizedBox(height: 10),

              const Text('o',
              style: TextStyle(color: Colors.white,fontSize: 25),),

              const SizedBox(height: 10),

              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        /*side: BorderSide(color: Colors.red)*/
                      )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  fixedSize: MaterialStateProperty.all<Size>(const Size(350,60)),
                ),
                onPressed: (){
                  Navigator.push(
                    context as BuildContext,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Icon(
                      Icons.sell_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text('Venditore',style: TextStyle(color: Colors.black, fontSize: 20),)
                  ],
                )


              ),





            ],
          ),
        ),

      ),
    );


  }
}