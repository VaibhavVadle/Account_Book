
import 'package:flutter/material.dart';



class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20,right: 15) ,
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('image/profile.png'),
                            radius: 32,
                          ),
                          SizedBox(width: 15,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('My Business',
                                style:TextStyle(
                                    fontSize: 18
                                )),
                          ),
                        ],
                      ),



                      Align(
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          onPressed:(){},
                          child: Text('Edit',
                              style:TextStyle(
                                  color: Colors.blueAccent
                              )),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              width: 1.5,
                              color: Colors.blueAccent,
                            )
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Row(
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
                            height: 140,
                             child: Column(
                               children: const <Widget> [
                                 SizedBox(height: 10,),
                                 CircleAvatar(
                                   radius: 30,
                                   backgroundImage: AssetImage('image/business_card.jpg'),
                                 ),
                                 SizedBox(height: 10,),
                                 Text('Business \n Card',
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
                            height: 140,
                            child: Column(
                              children: const <Widget>[
                                SizedBox(height: 10,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:AssetImage('image/cashbook.jpg',),
                                ),
                                SizedBox(height: 20,),
                                Text('Cashbook',
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
                            height: 140,
                            child: Column(
                              children: const <Widget>[
                                SizedBox(height: 10,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:AssetImage('image/business_stamp.png'),
                                ),
                                SizedBox(height: 10,),
                                Text('Business \n Stamp',
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
                SizedBox(height: 5,),
                Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      leading: Icon(Icons.settings,size: 30,),
                      backgroundColor: Colors.white,
                        title: Text('Settings',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:56.0),
                          child: ListTile(
                            onTap: (){print('Recycle Bin');},
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                            ),
                            title: Text('Recycle Bin'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:56.0),
                          child: ListTile(
                            onTap: (){print('App Lock');},
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                            ),
                            title: Text('App Lock'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:56.0),
                          child: ListTile(
                            onTap: (){print('Language');},
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                            ),
                            title: Text('Language'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:56.0),
                          child: ListTile(
                            onTap: (){print('Backup Information');},
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                            ),
                            title: Text('Backup Information'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:56.0),
                          child: ListTile(
                            onTap: (){print('Delete Account');},
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                            ),
                            title: Text('Delete Account'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:56.0),
                          child: ListTile(
                            onTap: (){print('App Update');},
                            trailing: Padding(
                              padding: EdgeInsets.only(right: 7.0),
                              child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                            ),
                            title: Text('App Update'),
                          ),
                        ),



                      ],

                    ),
                  ),
                SizedBox(height: 5,),
                Container(
                  color: Colors.white,
                  child: ExpansionTile(
                    leading: Icon(Icons.question_answer_outlined,size: 30,),
                    backgroundColor: Colors.white,
                    title: Text('Help & Support',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:56.0),
                        child: ListTile(
                          onTap: (){print('FAQs');},
                          trailing: Padding(
                            padding: EdgeInsets.only(right: 7.0),
                            child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                          ),
                          title: Text('FAQs'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:56.0),
                        child: ListTile(
                          onTap: (){print('Help on WhatsApp');},
                          trailing: Padding(
                            padding: EdgeInsets.only(right: 7.0),
                            child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                          ),
                          title: Text('Help on WhatsApp'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:56.0),
                        child: ListTile(
                          onTap: (){print('Call Us');},
                          trailing: Padding(
                            padding: EdgeInsets.only(right: 7.0),
                            child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                          ),
                          title: Text('Call Us'),
                        ),
                      ),

                    ],

                  ),
    ),
                    SizedBox(height: 5,),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        leading: Icon(Icons.search_rounded,size: 30,),
                        backgroundColor: Colors.white,
                        title: Text('About Us',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:56.0),
                            child: ListTile(
                              onTap: (){print('About Accountbook');},
                              trailing: Padding(
                                padding: EdgeInsets.only(right: 7.0),
                                child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                              ),
                              title: Text('About Accountbook'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:56.0),
                            child: ListTile(
                              onTap: (){print('Privacy Policy');},
                              trailing: Padding(
                                padding: EdgeInsets.only(right: 7.0),
                                child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                              ),
                              title: Text('Privacy Policy'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:56.0),
                            child: ListTile(
                              onTap: (){print('Terms & Conditions');},
                              trailing: Padding(
                                padding: EdgeInsets.only(right: 7.0),
                                child: Icon(Icons.arrow_forward_ios_rounded,size:16 ,),
                              ),
                              title: Text('Terms & Conditions'),
                            ),
                          ),

                        ],
                      ),
                    )


              ],

            ),
          )

        ],
      ),

    );
  }
}
