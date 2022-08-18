// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
// ignore: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: unused_import, avoid_web_libraries_in_flutter, use_key_in_widget_constructors, prefer_const_constructors, unused_element, avoid_print


import 'package:flutter/material.dart';
import 'home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SignScreen());
}


class SignScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return SignScreenState();
  }
}

class SignScreenState extends State<SignScreen>{
 

  String name=' ';
  String email=' ';
  String phoneno=' ';
  String dateofbirth=' ';
  String address=' ';
  String gender=' ';
  String nationality=' ';
  String state=' ';
  String city=' ';
  String jobexperience=' ';


  final TextEditingController _email = TextEditingController();
    final TextEditingController _name = TextEditingController();
      final TextEditingController _phoneno = TextEditingController();
        final TextEditingController _dateofbirth = TextEditingController();
        final TextEditingController _address = TextEditingController();
          final TextEditingController _gender = TextEditingController();
            final TextEditingController _nationality = TextEditingController();
              final TextEditingController _state = TextEditingController();
                final TextEditingController _city = TextEditingController();
                  final TextEditingController _jobexperience = TextEditingController();










  final GlobalKey<FormState> _bioKey = GlobalKey<FormState>();
  Widget _buildName(){
    return TextFormField(
      controller: _name,
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 20,
      validator: (value){
        if(value!.isEmpty){
          return 'Name is Required';
        }
        return null;

      },
      onSaved:(value){
        name = value!;
      },

    
    );

  }
  Widget _buildEmail(){
    return TextFormField(
      controller: _email,
      decoration: InputDecoration(labelText: 'Email-Id'),
      maxLength: 20,
      validator: (value){
        if(value!.isEmpty){
          return 'Email is Required';
        }
        if(!RegExp(
           r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?").hasMatch(value)){
            return 'Please enter a valid emailAddress';
           }
        return null;

      },
      onSaved:(value){
        email = value!;
      },

    
    );

  }
    Widget _buildPhoneno(){
    return TextFormField(
      controller: _phoneno,
      decoration: InputDecoration(labelText: 'Phone no.'),
      maxLength: 10,
      validator: (value){
        if(value!.isEmpty){
          return 'phoneno. is Required';
        }
        return null;

      },
      onSaved:(value){
        phoneno = value!;
      },

    
    );

  }
     Widget _buildDateofbirth(){
    return TextFormField(
      controller: _dateofbirth,
      decoration: InputDecoration(labelText: 'Date of Birth'),
      maxLength: 10,
      validator: (value){
        if(value!.isEmpty){
          return 'Date of Birth is Required';
        }
        return null;

      },
      onSaved:(value){
        dateofbirth = value!;
      },

    
    );

  }
    Widget _buildAddress(){
    return TextFormField(
      controller: _address,
      decoration: InputDecoration(labelText: 'Address'),
      maxLength: 30,
      validator: (value){
        if(value!.isEmpty){
          return 'Address is Required';
        }
        return null;

      },
      onSaved:(value){
        address = value!;
      },

    
    );

  }
    Widget _buildGender(){
    return TextFormField(
      controller: _gender,
      decoration: InputDecoration(labelText: 'Gender'),
      maxLength: 10,
      validator: (value){
        if(value!.isEmpty){
          return 'Gender is Required';
        }
        return null;

      },
      onSaved:(value){
        gender= value!;
      },

    
    );

  }
    Widget _buildNationality(){
    return TextFormField(
      controller: _nationality,
      decoration: InputDecoration(labelText: 'Nationality'),
      maxLength: 20,
      validator: (value){
        if(value!.isEmpty){
          return 'Nationality is Required';
        }
        return null;

      },
      onSaved:(value){
        nationality = value!;
      },

    
    );

  }
    Widget _buildState(){
    return TextFormField(
      controller: _state,
      decoration: InputDecoration(labelText: 'State'),
      maxLength: 30,
      validator: (value){
        if(value!.isEmpty){
          return 'State is Required';
        }
        return null;

      },
      onSaved:(value){
        state = value!;
      },

    
    );

  }
    Widget _buildCity(){
    return TextFormField(
      controller: _city,
      decoration: InputDecoration(labelText: 'City'),
      maxLength: 30,
      validator: (value){
        if(value!.isEmpty){
          return 'City is Required';
        }
        return null;

      },
      onSaved:(value){
        city = value!;
      },

    
    );

  }
    Widget _buildJobexperience(){
    return TextFormField(
      controller: _jobexperience,
      decoration: InputDecoration(labelText: 'Job Experience'),
      maxLength: 25,
      validator: (value){
        if(value!.isEmpty){
          return 'Job Experience is Required';
        }
        return null;

      },
      onSaved:(value){
        jobexperience = value!;
      },

    
    );

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Profile:")),
      body: SingleChildScrollView(
        child:Container(
          margin:EdgeInsets.all(24),
          child:Form(
            key:_bioKey,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              _buildName(),
              _buildEmail(),
              _buildPhoneno(),
              _buildAddress(),
              _buildDateofbirth(),
              _buildGender(),
              _buildNationality(),
              _buildState(),
              _buildCity(),
              _buildJobexperience(),
              SizedBox(height: 100),
              ElevatedButton(
                child:Text('Show the profile page',style: TextStyle(color: Colors.black87, fontSize:18),),
                onPressed: () {
                  if(! _bioKey.currentState!.validate()){
                    return;

                  }
                  _bioKey.currentState!.save();
                  print(name);
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>HomeScreen(Name:name,Email:email,Phoneno:phoneno,Address:address,DateofBirth:dateofbirth,Gender:gender,Nationality:nationality,State:state,City:city,Jobexperience:jobexperience)));
                  
                }
              ),
              Container(
                    padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                    child: FloatingActionButton(
                        child: const Text('Submit'),
                        onPressed: () {
                          FirebaseFirestore.instance
                                .collection('users')
                                .doc(_email.text)
                                .set({
                                  'Name' :_name.text,
                                  'Email' : _email.text,
                                  'Phone':_phoneno.text,
                                  'Address':_address.text,
                                  'DateofBirth':_dateofbirth.text,
                                  'Gender':_gender.text,
                                  'Nationality':_nationality.text,
                                  'State':_state.text,
                                  'City':_city.text,
                                  'JobExperience':_jobexperience.text,
                                }).then((value)=> ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Your Data`s are stored in firestore'))));
              
                 
                  
                }
                
                        
              )
              
          









              )
              ]

            )
          )
        )
      )
    );
  }

  

}