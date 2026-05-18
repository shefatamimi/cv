import 'package:flutter/material.dart';

import 'create_cv_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          /// 🔴 Sliver AppBar
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: Colors.blueGrey,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                  iconSize: 30,
                ),
              ),
            ],

            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Container(
                padding: EdgeInsets.only(top: 80),
                alignment: Alignment.center,
                child: Column(
                  children: [

                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 90,
                        color: Colors.blueGrey,
                      ),
                    ),

                    SizedBox(height: 13),

                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Your career starts with a great CV',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// 🟡 المحتوى تحت الـ AppBar
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quick Actions',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateCvScreen()));
                        },
                        child: Container(
                          height: 100,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),

                              ]
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.note_add, color: Colors.blueGrey, size: 48,),

                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 17,left: 10,bottom: 5),
                                      child: Text('Create New CV', style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2,left: 10),
                                      child: Text(
                                        'Create a new CV', style: TextStyle(
                                        fontSize: 13,
                                      ),),
                                    ),

                                  ]


                              ),
                              SizedBox(width: 115,),
                              Icon(Icons.arrow_forward_ios, color: Colors.blueGrey, size: 20,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 100,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),

                            ]
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.visibility, color: Colors.blueGrey, size: 48,),

                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 17,left: 10,bottom: 5),
                                    child: Text('My CV', style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2,left: 10),
                                    child: Text(
                                      'View your saved CV', style: TextStyle(
                                      fontSize: 13,
                                    ),),
                                  ),

                                ]


                            ),
                            SizedBox(width: 105,),
                            Icon(Icons.arrow_forward_ios, color: Colors.blueGrey, size: 20,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Tips", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,

                      )),
                      SizedBox(height: 8),
                      Container(
                        height: 100,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),


                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),

                            const Icon(
                              Icons.star_sharp,
                              color: Colors.blueGrey,
                              size: 48,
                            ),

                            const SizedBox(width: 10),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 17, left: 10, bottom: 1),
                                  child: Text(
                                    'Keep your CV updated',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                SizedBox(height: 5),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2, left: 10),
                                  child: Text(
                                    'Update your information regularly to\nget better opportunities.',
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}