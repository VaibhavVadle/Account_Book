import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  String phone,password;
  HomeScreen({Key? key,required this.phone,required this.password}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Phone number: ${widget.phone}',
                style: TextStyle(
                  fontSize: 20
                ),),
            Text('Password: ${widget.password}',
              style: TextStyle(
                  fontSize: 20
              ),),
          ],
        )
    )
    );
  }
}
