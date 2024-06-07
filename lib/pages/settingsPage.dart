import 'package:flutter/material.dart';
import 'package:flutter_project/components/auctions_comp.dart';
import 'package:flutter_project/components/drawerComp.dart';
import 'package:flutter_project/pages/modificaProfiloPage.dart';


class settingsPage extends StatelessWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //toolbarHeight: 150,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Impostazioni',
          style: TextStyle(color: Colors.white,
            fontSize: 30,
          ),
        ),


        centerTitle: true,
      ),

      body: Column(
        children: [

          const SizedBox(height: 10,),

          ListTile(
            title: const Row(
              children: [
                Icon(Icons.edit_note_rounded, color: Colors.white,),
                SizedBox(width: 10,),
                Text('Modifica profilo', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const modificaProfiloPage(),
                ),
              );
            },
          ),

          ListTile(
            title: const Row(
              children: [
                Icon(Icons.edit_rounded, color: Colors.white,),
                SizedBox(width: 10,),
                Text('Modifica password', style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            onTap: (){},
          ),



        ],
      ),



      backgroundColor: const Color(0xFF080808),






    );
  }



}