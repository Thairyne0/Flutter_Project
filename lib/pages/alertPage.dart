import 'package:flutter/material.dart';
import 'package:flutter_project/components/alertCompLose.dart';
import 'package:flutter_project/components/alertCompReoffer.dart';
import 'package:flutter_project/components/alertCompWin.dart';
import 'package:flutter_project/components/auctions_comp.dart';
import 'package:flutter_project/components/drawerComp.dart';


class alertPage extends StatelessWidget {
  const alertPage({Key? key}) : super(key: key);

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
              Text('Alerts', style: TextStyle(fontSize: 27, color: Colors.white),),
            ],
          ),
          MyAlertWin(),
          MyAlertLose(),
          MyAlertReoffer(),
          MyAlertWin(),
          MyAlertReoffer(),
          MyAlertLose(),
          MyAlertLose(),
          MyAlertReoffer(),

        ],
      ),



      backgroundColor: const Color(0xFF080808),






    );
  }



}