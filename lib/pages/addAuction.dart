import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/components/auctions_comp.dart';
import 'package:flutter_project/components/drawerComp.dart';
import 'package:flutter_project/components/my_textfield.dart';
import 'package:flutter_project/homepage.dart';
import 'package:flutter_project/pages/astaInversaPage.dart';
import 'package:flutter_project/pages/astaSilenziosaPage.dart';
import 'package:flutter_project/pages/astaTempoFissoPage.dart';


class addAuctionPage extends StatelessWidget {
  addAuctionPage({Key? key}) : super(key: key);


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

      drawer: const MyDrawer(),

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Text('Che tipo di asta intendi creare?', style: TextStyle(color: Colors.white, fontSize: 24),),
            const SizedBox(height: 60,),
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
                      builder: (context) => astaSilenziosaPage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Icon(
                      Icons.adb_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text('Asta Silenziosa',style: TextStyle(color: Colors.black, fontSize: 20),)
                  ],
                )


            ),
            SizedBox(height: 50,),
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
                      builder: (context) => astaTempoFissoPage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Icon(
                      Icons.timer_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text('Asta a tempo fisso',style: TextStyle(color: Colors.black, fontSize: 20),)
                  ],
                )


            ),
            SizedBox(height: 50,),
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
                      builder: (context) => astaInversaPage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text('Asta inversa',style: TextStyle(color: Colors.black, fontSize: 20),)
                  ],
                )


            ),
          ],
        ),
      ),



      backgroundColor: const Color(0xFF080808),






    );
  }



}