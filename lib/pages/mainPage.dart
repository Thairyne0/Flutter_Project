import 'package:flutter/material.dart';
import 'package:flutter_project/components/auctions_comp.dart';
import 'package:flutter_project/components/drawerComp.dart';


class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

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

      body: ListView(
        children: const [
          Row(
            children: [
              SizedBox(width: 10),
              Text('Aste in evidenzia', style: TextStyle(fontSize: 27, color: Colors.white),),
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



      backgroundColor: Color(0xFF080808),






    );
  }



}