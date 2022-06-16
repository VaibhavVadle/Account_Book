
import 'package:account_book/screens/homescreen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class login extends StatefulWidget {
  const login({Key? key,}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {


  Future openDialog()=> showDialog(
    context: context,
    builder: (context) => const Padding(
      padding: EdgeInsets.all(25.0),
      child: AlertDialog(
        title: Text('LOGIN Succesfully',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),),
      ),
    ),
  );
  Future closeDialog()=> showDialog(
    context: context,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(25.0),
      child: AlertDialog(
        title: Text('Invalid Inputs',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),),
      ),
    ),
  );

  var number = "";
  var password = "";

  final _myFormKey = GlobalKey<FormState>();
  final numbercontroller = TextEditingController();
  final passwordcontroller  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 2.0,
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.blue[800],

              // Status bar brightness (optional)
              statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),

            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'image/logo.png',
                  fit: BoxFit.contain,
                  height: 45,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Accountbook',
                    style: TextStyle(
                      color: Colors.red[700],

                    ),

                  ),
                ),
              ],
            )
        ),
      ),
      body:Container(

        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,


        
        child: Stack(
          children: <Widget>[
          Positioned(
            child: SingleChildScrollView(
              child: Form(
                key: _myFormKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.0),
                        child: TextFormField(
                          controller: numbercontroller,
                          keyboardType: TextInputType.phone,

                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Mobile number';
                            }
                            if (value.length != 10) {
                              return 'Mobile number should be of 10 digits';
                            }
                            return null;
                          },

                          decoration: InputDecoration(
                            labelText:"Mobile number",
                            hintText: "Enter your mobile number",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blueAccent,
                                  width: 1.0,),
                                  borderRadius : BorderRadius.circular(5.0),
                                )

                            ),

                          ),

                        ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText:"Password",
                              hintText: "Enter your Password",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1.0,),
                                borderRadius : BorderRadius.circular(5.0),
                              )

                          ),


                        ),
                      ),
                      SizedBox(height: 40),




                    ],


                  ),

              ),


            ),
          ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton.icon(
                      icon: Icon(Icons.login),
                      label: Text('Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue[800],
                          elevation: 6,
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 150.0)
                      ),
                      onPressed: (){
                        if (_myFormKey.currentState!.validate()) {
                          openDialog();
                          // Navigator.pushReplacement(context,
                          //   MaterialPageRoute(builder: (context) => HomeScreen(
                          //     phone: numbercontroller.text,
                          //     password:passwordcontroller.text
                          //
                          //   )),
                          // );
                        }
                        else{
                          closeDialog();
                        }
                      }
                  ),
                ),
              ),
            ),
          ]
        ),

      ) ,
    );
  }
}
