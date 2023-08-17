import 'package:flut_11/home_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isActive=false;
  String? _email;
  String? _phone;
  

  
 
  
 

  void _active() {
    setState(() {});
    if (_phone!.length<1 || _email!.length<1) {
      isActive = false;
      
    }else  {
      isActive=true;
    }
    // print(_phone);
    //print(_email);
    //print(isActive);
    //setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff076650),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'ТАПШЫРМА - 04',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(48.0),
                    child: Image.asset(
                      'image/photo.png.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(48.0),
                    child: Image.asset(
                      'image/photo.png.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(48.0),
                    child: Image.asset(
                      'image/photo.png.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Asanbek uulu Nurkadyr',
                style: GoogleFonts.pacifico(
                    color: const Color.fromARGB(255, 172, 211, 189),
                    fontSize: 30),
                //style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Flutter developer',
                style: GoogleFonts.abel(
                    color: const Color.fromARGB(255, 168, 214, 188),
                    fontSize: 30),
                //style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Divider(
                color: Color.fromARGB(255, 100, 230, 199),
                height: 20,
                thickness: 1,
                indent: 125,
                endIndent: 120,
              ),
              SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    //initialValue: "+996778121314",
                    style: const TextStyle(
                      color: Color(0xff076650),
                      fontSize: 20,
                    ),
                    onChanged: (String? phone) {
                      _phone = phone;
                      _active();
                    },
                    decoration: const InputDecoration(
                      hintText: 'phone number',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xff076650),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    //initialValue: "Nurkadyr@gmail.com",
                    style: const TextStyle(
                      color: Color(0xff076650),
                      fontSize: 20,
                    ),
                    onChanged: (String? email) {
                      _email = email;
                      _active();
                    },

                    decoration: const InputDecoration(
                      hintText: 'email adress',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.messenger,
                        color: Color(0xff076650),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: isActive==true ? () {
                  if(_phone.toString()=='0770101010' && _email.toString()=='Nurkadyr@gmail.com'){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );}else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.white,
                    content: Text('nomer же email туура эмес!',style: TextStyle(color:Colors.red,),),
                  ),
                );
              }
              } : null,
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                  backgroundColor: const Color.fromARGB(255, 18, 116, 70),
                ),
               
              ),
            ],
          ),
        ),
      ),
    );
  }
}
