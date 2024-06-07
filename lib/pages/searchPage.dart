import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/components/auctions_comp.dart';
import 'package:flutter_project/components/drawerComp.dart';
import 'package:flutter_project/components/my_textfield.dart';


class searchPage extends StatelessWidget {
  searchPage({Key? key}) : super(key: key);

  final searchController = TextEditingController();

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
        children: [
          const SizedBox(height: 10),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextField(
            controller: searchController,
            obscureText: false,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: Colors.grey),
                // borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search',
            ),
          ),
        ),
          const SizedBox(height: 10),
          const Row(
            children: [
              SizedBox(width: 10),
              Text('Risultati', style: TextStyle(fontSize: 27, color: Colors.white),),
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



      backgroundColor: const Color(0xFF080808),






    );
  }



}