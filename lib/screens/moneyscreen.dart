import 'package:flutter/material.dart';

class MoneyScreen extends StatefulWidget {
  const MoneyScreen({Key? key}) : super(key: key);

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Column(
        children: [Stack(
          children: <Widget>[
          Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 145,
              color: Colors.blue[800],
            ),
          ],
          ),
            Padding(
              padding: EdgeInsets.only(top:70),
              child: Align(
                alignment: Alignment.topCenter,
                child: Card(

                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SizedBox(
                        height: 100,
                        width: 340,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Payment History',
                            style: TextStyle(
                              fontSize:16,
                            ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.currency_rupee,size: 36,),
                                    Text('0',
                                    style: TextStyle(
                                      fontSize:36,
                                    ),),

                                  ],
                                ),
                                OutlinedButton(onPressed: (){},
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14.0)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                        side: BorderSide(
                                          width: 1.5,
                                          color: Colors.blue.shade800,

                                        )
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('VIEW',
                                          style: TextStyle(
                                            color: Colors.blue[800],
                                            letterSpacing: 3.0,
                                              fontSize: 12
                                          ),
                                        ),
                                        SizedBox(width: 4,),
                                        Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.blue[800],)
                                      ],
                                    )
                                )
                              ],
                            ),
                            SizedBox(height: 7,),
                            Text('Collected from 0 payments',
                            style: TextStyle(
                                fontSize: 14,
                              color: Colors.grey[600]
                            ),
                            )
                          ],
                        ),

                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: SizedBox(
                        height: 130,
                        child: Column(
                          children: const <Widget> [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('image/recieve_money.png'),
                            ),
                            SizedBox(height: 10,),
                            Text('Request \n Money',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: SizedBox(
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            SizedBox(height: 10,),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:AssetImage('image/send_money.png',),
                            ),
                            SizedBox(height:  10,),
                            Text('Send \n Money',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: SizedBox(
                        height: 130,
                        child: Column(
                          children: const <Widget>[
                            SizedBox(height: 10,),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:AssetImage('image/qr_code.png'),
                            ),
                            SizedBox(height: 10,),
                            Text('Order Qr \n Code',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Card(
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:AssetImage('image/collect_money.png'),
                          ),
                          SizedBox(width: 18,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Collect pending money',
                              style: TextStyle(
                                fontSize: 16,
                              ),),
                              SizedBox(height: 5,),
                              Text('No pending Collections',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),)
                            ],

                          )
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue.shade800,
                            width: 1
                          ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.blue.shade800,),
                      ),


                    ],
                  ),

                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:AssetImage('image/gold.png'),
                          ),
                          SizedBox(width: 18,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('AccountBook Gold' ,
                                style: TextStyle(
                                  fontSize: 16,
                                ),),
                              SizedBox(height: 5,),
                              Text('Save More With 24K Gold',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),)
                            ],

                          )
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.blue.shade800,
                              width: 1
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.blue.shade800,),
                      ),


                    ],
                  ),

                ),
              ),
            ),
          )
      ]
      ),
    );
  }
}
