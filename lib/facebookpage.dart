import 'package:flutter/material.dart';

class Facebookkpage extends StatefulWidget {
  const Facebookkpage({Key? key}) : super(key: key);

  @override
  State<Facebookkpage> createState() => _FacebookkpageState();
}

class _FacebookkpageState extends State<Facebookkpage> {
  final formkey=GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Center(child: Text("Facebook",style: TextStyle(fontSize: 30,color: Colors.white),)),

          Column(
            children: [
              Center(child: Text("Facebook",style: TextStyle(fontSize: 15,color: Colors.white),)),
              Form(
                key: formkey,
                  child: Column(
                    children: [
                             TextFormField(
                               validator: (val){
                                 if(val!.isEmpty){
                                   return "Name Cannot  empty";
                                 }else if (val.length<3){
                                   return "Name must  atleast 5 characters";
                                 }
                                 return null;
                               },
                               decoration: InputDecoration(
                                 labelText: "Name",
                               ),
                             ),
                      TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Email/Password Cannot empty";
                          }else if(val.length<9){
                            return "Email/Phonenumber must atleast 10 characters";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Eamil/Password",
                          hintText: "Email/Phonenumber"

                        ),
                      ),
                      TextFormField(
                        validator: (val){
                          if(val!.isEmpty){
                            return "Password Cannot Emty ";
                          }
                          else if(val.length<10){
                            return "Password must be 15 characters";
                          }return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Password"

                        ),
                      ),
                      ElevatedButton(onPressed: (){
                        if(formkey.currentState!.validate()){
                          debugPrint("All validation password");
                        }
                      },
                        child: Text("Login"),

                      ),
                    ],
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
