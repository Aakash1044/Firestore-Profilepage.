// ignore_for_file: must_be_immutable, non_constant_identifier_names, unnecessary_const, no_leading_underscores_for_local_identifiers, unnecessary_new


import 'package:flutter/material.dart';
import 'package:authentification/start.dart';

class HomeScreen extends StatelessWidget{
  BuildContext? get context => null;


  String Name;
  String Email;
  String Phoneno;
  String Address;
  String DateofBirth;
  String Gender;
  String Nationality;
  String State;
  String City;
  String Jobexperience;
  HomeScreen({Key? key, required this.Name,required this.Email,required this.Phoneno,required this.Address,required this.DateofBirth,required this.Gender,required this.Nationality,required this.State,required this.City,required this.Jobexperience}) : super(key: key);
  @override
  Widget build(BuildContext context){
    TableRow _tablerow = const TableRow(
      children:[
        const Padding(padding:EdgeInsets.all(15),
        child:Text('Bio Data',style: TextStyle(fontSize:20)),
        ),
        Padding(padding: const EdgeInsets.all(1),
        child: const Text(''),)
        
      ]
    );
    TableRow _tablerow1 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:const Text('Name',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Name,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
     TableRow _tablerow2 = TableRow(
      children:[
        const Padding(padding:EdgeInsets.all(15),
        child:Text('Email',style: const TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Email,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow3 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:const Text('Phoneno',style: const TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Phoneno,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow4 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:Text('Address',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Address,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow5 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:Text('DateofBirth',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(DateofBirth,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow6 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:Text('Gender',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Gender,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow7 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:const Text('Nationality',style: const TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Nationality,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow8 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:const Text('State',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(State,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow9 = TableRow(
      children:[
        const Padding(padding:EdgeInsets.all(15),
        child:Text('City',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(City,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    TableRow _tablerow10 = TableRow(
      children:[
        const Padding(padding:const EdgeInsets.all(15),
        child:Text('Jobexperience',style: TextStyle(fontSize:13)),
        ),
        Padding(padding: const EdgeInsets.all(15),
        child: Text(Jobexperience,style: const TextStyle(fontSize: 13)),)
        
      ]
    );
    

    return new Scaffold(
      appBar: AppBar(
        title: const Text("Response"),

      ),
      body: Center(
        child: SingleChildScrollView(
          child:Table(
            defaultColumnWidth: const FixedColumnWidth(120),
            children: [
              _tablerow,
              _tablerow1,
              _tablerow2,
              _tablerow3,
              _tablerow4,
              _tablerow5,
              _tablerow6,
              _tablerow7,
              _tablerow8,
              _tablerow9,
              _tablerow10,
         
            ],
          ),
           
        ))
    );
  }
}