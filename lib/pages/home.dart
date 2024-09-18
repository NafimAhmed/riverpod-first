


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:_buildUI(context)
    );
  }



  Widget _buildUI(BuildContext context){

    return SafeArea(child: SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _allPokemonlist(context)

          ],
        ),
      ),
    ));

  }



  Widget _allPokemonlist (BuildContext context){

    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("All pokemons",style: TextStyle(
            fontSize: 25,
          ),),


          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.6,
            child: ListView.builder(
                itemCount: 0,
                itemBuilder: (context,index){
              return ListTile(

              );
            }),
          )



        ],
      ),
    );

  }



}