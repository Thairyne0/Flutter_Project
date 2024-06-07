import 'package:flutter/material.dart';
import 'package:flutter_project/class/profileClass.dart';
import 'package:flutter_project/pages/settingsPage.dart';

class modificaProfiloPage extends StatelessWidget {
  const modificaProfiloPage({Key? key}) : super(key: key);

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

                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${account.nome} ${account.cognome}',style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                            const SizedBox(width: 10,),
                            const Icon(Icons.edit_rounded, color: Colors.white,),
                          ],
                        ),
                        onTap: (){},
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),

                      ListTile(
                        title: Row(
                          children: [
                            Text('Email: ${account.email}',style: const TextStyle(color: Colors.white, fontSize: 20),),
                            const SizedBox(width: 10,),
                            const Icon(Icons.edit_rounded, color: Colors.white,),
                          ],
                        ),
                        onTap: (){},
                      ),

                      ListTile(
                        title: Row(
                          children: [
                            Text('Indirizzo: ${account.indirizzo}',style: const TextStyle(color: Colors.white, fontSize: 20),),
                            const SizedBox(width: 10,),
                            const Icon(Icons.edit_rounded, color: Colors.white,),
                          ],
                        ),
                        onTap: (){},
                      ),

                      ListTile(
                        title: const Row(
                          children: [
                            Text('Metodi di pagamento',style: TextStyle(color: Colors.white, fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.edit_rounded, color: Colors.white,),
                          ],
                        ),
                        onTap: (){},
                      ),

                      const SizedBox(height: 70,),


                      Padding(padding: const EdgeInsets.symmetric(horizontal: 70.0),
                        child: ElevatedButton(
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
                                  builder: (context) => const settingsPage(),
                                ),
                              );
                            },
                            child: const Wrap(
                              children: [
                                Row(
                                  children: [
                                    Text('Conferma',style: TextStyle(color: Colors.black, fontSize: 30),),
                                    SizedBox(width: 45),
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
                      )








                    ],
                  ),
                ),


              ],
            ),
          ),

        ),











    );
  }


}