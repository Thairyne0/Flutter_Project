import 'package:flutter/material.dart';
import 'package:flutter_project/pages/settingsPage.dart';


class MyDrawer extends StatelessWidget{
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: const Color(0xFF080808),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text('DietiDeals',style: TextStyle(color: Colors.white, fontSize: 35),),
              ),

              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.shopping_cart_rounded, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Acquistati', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                onTap: (){},
              ),

              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.settings, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Impostazioni', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const settingsPage(),
                    ),
                  );
                },
              ),

              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.privacy_tip_rounded, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Privacy', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                onTap: (){},
              ),

              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.logout_rounded, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Log-Out', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                onTap: (){},
              ),


            ],
          ),
        )

    );
  }



}