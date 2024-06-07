import 'package:flutter/material.dart';
import 'package:flutter_project/class/profileClass.dart';
import 'package:flutter_project/components/auctions_comp.dart';
import 'package:flutter_project/components/drawerComp.dart';
import 'package:flutter_project/pages/offerPage.dart';

class accountPage extends StatelessWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var account = Profilo('VN000001', 'Won-hee', 'Lee', 'via benedetto Crispano 28', 'vogliomorire1', 'voglio@morire.it', 'lib/images/profile_picture.jpg', 'Bio del tuo profilo, fidati che sono troppo bravo a fare le cose');
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

        drawer: const MyDrawer(),


        body: SafeArea(
          child: Center(
            child: Column(
              children: [

                Expanded(
                    child: ListView(
                      children: [
                        const SizedBox(height: 25),
                        Container(
                          height: 135,
                          width: 135,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            account.profilePicture,
                            height: 170,
                            width: 170,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${account.nome} ${account.cognome}',style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                          ],
                        ),

                        const SizedBox(height: 10),

                        SizedBox(
                          width: 375,
                          height: 110,
                          child: Text(account.profileBio,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: const TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),



                        const SizedBox(height: 5),

                        const Row(
                          children: [
                            SizedBox(width: 10),
                            Text('Le tue aste', style: TextStyle(fontSize: 27, color: Colors.white),),
                          ],
                        ),


                        MyAuction(),
                        MyAuction(),
                        MyAuction(),
                        MyAuction(),
                        MyAuction(),
                        MyAuction(),
                      ],
                    ),
                ),



              ],
            ),
          ),

        )









    );
  }


}